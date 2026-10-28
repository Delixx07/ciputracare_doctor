import 'dart:math' as math;

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text.dart';
import '../../core/widgets/widgets.dart';
import '../../data/models/lab.dart';
import '../../data/providers.dart';

/// Tren satu parameter lab lintas kunjungan: grafik garis + pita rujukan + tabel nilai.
class TrenPage extends ConsumerStatefulWidget {
  const TrenPage({super.key, required this.noReg, required this.itemAwal});

  final String noReg;
  final String itemAwal;

  @override
  ConsumerState<TrenPage> createState() => _TrenPageState();
}

class _TrenPageState extends ConsumerState<TrenPage> {
  late String _item = widget.itemAwal;

  @override
  Widget build(BuildContext context) {
    final lab = ref.watch(labPasienProvider(widget.noReg)).valueOrNull;
    final nama = ref.watch(headerPasienProvider(widget.noReg)).valueOrNull?.nama;
    final tren = ref.watch(trenLabProvider((noReg: widget.noReg, item: _item)));

    // Pilihan parameter: yang di luar rujukan dulu.
    final pilihan = <String>[
      ...?lab?.hasil.where((h) => h.diLuarRujukan).map((h) => h.item),
      ...?lab?.hasil.where((h) => !h.diLuarRujukan).map((h) => h.item),
    ];
    if (!pilihan.contains(_item)) pilihan.insert(0, _item);

    return Scaffold(
      backgroundColor: AppColors.canvas,
      appBar: AppBar(
        titleSpacing: context.canPop() ? 0 : AppSpacing.s4,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tren hasil lab', style: AppText.title),
            if (nama != null) Text(nama, style: AppText.caption),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: AppSpacing.s6),
        children: [
          SizedBox(
            height: AppSpacing.minTouch + AppSpacing.s4,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4, vertical: AppSpacing.s2),
              itemCount: pilihan.length,
              separatorBuilder: (_, _) => const SizedBox(width: AppSpacing.s2),
              itemBuilder: (context, i) {
                return FilterPill(
                  label: pilihan[i],
                  selected: pilihan[i] == _item,
                  onTap: () => setState(() => _item = pilihan[i]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4),
            child: tren.when(
              loading: () => const Padding(
                padding: EdgeInsets.all(AppSpacing.s8),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (e, _) => EmptyState(
                icon: Icons.cloud_off_outlined,
                title: 'Gagal memuat tren',
                onRetry: () => ref.invalidate(trenLabProvider((noReg: widget.noReg, item: _item))),
              ),
              data: (t) => t == null || t.titik.isEmpty
                  ? EmptyState(
                      icon: Icons.show_chart,
                      title: 'Belum ada data tren $_item',
                      message: 'Tren muncul bila ada lebih dari satu pemeriksaan.',
                    )
                  : _Isi(tren: t),
            ),
          ),
        ],
      ),
    );
  }
}

class _Isi extends StatelessWidget {
  const _Isi({required this.tren});

  final TrenLab tren;

  bool _luar(num v) => tren.rujukan.length == 2 && (v < tren.rujukan[0] || v > tren.rujukan[1]);

  @override
  Widget build(BuildContext context) {
    final t = tren;
    final terakhir = t.titik.last;
    final arah = t.rujukan.length == 2
        ? (terakhir.nilai > t.rujukan[1]
              ? ' ▲'
              : terakhir.nilai < t.rujukan[0]
              ? ' ▼'
              : '')
        : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SurfaceCard(
          padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s4, AppSpacing.s4, AppSpacing.s3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(child: Text('${t.item} (${t.satuan})', style: AppText.section)),
                  Text('Terakhir ', style: AppText.caption),
                  Text(
                    '${_angka(terakhir.nilai)}$arah',
                    style: AppText.bodyStrong.copyWith(color: _luar(terakhir.nilai) ? AppColors.danger : AppColors.ink),
                  ),
                ],
              ),
              if (t.rujukan.length == 2)
                Text('Rujukan ${_angka(t.rujukan[0])}–${_angka(t.rujukan[1])}', style: AppText.small),
              const SizedBox(height: AppSpacing.s4),
              AspectRatio(
                aspectRatio: 1.6,
                child: _Grafik(tren: t, luar: _luar),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.s4),
        ListCard(
          children: [
            for (final p in t.titik.reversed)
              ListCardItem(
                title: p.waktu,
                subtitle: p.kunjungan,
                trailing: ValueText(
                  _angka(p.nilai),
                  status: _luar(p.nilai)
                      ? (p.nilai > t.rujukan[1] ? ValueStatus.tinggi : ValueStatus.rendah)
                      : ValueStatus.normal,
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class _Grafik extends StatelessWidget {
  const _Grafik({required this.tren, required this.luar});

  final TrenLab tren;
  final bool Function(num) luar;

  @override
  Widget build(BuildContext context) {
    final t = tren;
    final nilai = [...t.titik.map((p) => p.nilai.toDouble()), ...t.rujukan.map((r) => r.toDouble())];
    final minY = math.max(0.0, nilai.reduce(math.min) * 0.8).floorToDouble();
    final maxY = (nilai.reduce(math.max) * 1.1).ceilToDouble();
    final spots = [for (var i = 0; i < t.titik.length; i++) FlSpot(i.toDouble(), t.titik[i].nilai.toDouble())];

    return Semantics(
      label: 'Grafik tren ${t.item}: ${t.titik.map((p) => '${p.waktu} ${_angka(p.nilai)}').join(', ')}',
      excludeSemantics: true,
      child: LineChart(
        LineChartData(
          minX: -0.3,
          maxX: t.titik.length - 0.7,
          minY: minY,
          maxY: maxY,
          clipData: const FlClipData.all(),
          rangeAnnotations: RangeAnnotations(
            horizontalRangeAnnotations: [
              if (t.rujukan.length == 2)
                HorizontalRangeAnnotation(
                  y1: t.rujukan[0].toDouble(),
                  y2: t.rujukan[1].toDouble(),
                  color: AppColors.successSoft,
                ),
            ],
          ),
          gridData: FlGridData(
            drawVerticalLine: false,
            getDrawingHorizontalLine: (_) => const FlLine(color: AppColors.line, strokeWidth: AppSize.strokeThin),
          ),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            topTitles: const AxisTitles(),
            rightTitles: const AxisTitles(),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: AppSpacing.s8 + AppSpacing.s2,
                getTitlesWidget: (v, meta) => v == meta.min || v == meta.max
                    ? const SizedBox()
                    : SideTitleWidget(
                        meta: meta,
                        child: Text(_angka(v), style: AppText.small),
                      ),
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                reservedSize: AppSpacing.s6,
                getTitlesWidget: (v, meta) {
                  final i = v.round();
                  if (v != i || i < 0 || i >= t.titik.length) return const SizedBox();
                  return SideTitleWidget(
                    meta: meta,
                    child: Text(t.titik[i].waktu, style: AppText.small),
                  );
                },
              ),
            ),
          ),
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (_) => AppColors.brandStrong,
              getTooltipItems: (spots) => [
                for (final s in spots)
                  LineTooltipItem(
                    '${t.titik[s.x.round()].waktu}\n${_angka(s.y)} ${t.satuan}',
                    AppText.small.copyWith(color: AppColors.onBrand, fontWeight: FontWeight.w700),
                  ),
              ],
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              color: AppColors.brand,
              barWidth: AppSize.stroke,
              dotData: FlDotData(
                getDotPainter: (spot, _, _, _) => FlDotCirclePainter(
                  radius: AppSize.chartDot,
                  color: luar(spot.y) ? AppColors.danger : AppColors.brand,
                  strokeWidth: AppSize.stroke,
                  strokeColor: AppColors.surfaceRaised,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 452.0 → "452", 3.1 → "3,1".
String _angka(num v) {
  if (v == v.roundToDouble()) return v.round().toString();
  return v.toString().replaceAll('.', ',');
}
