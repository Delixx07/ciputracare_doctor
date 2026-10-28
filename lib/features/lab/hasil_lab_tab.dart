import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text.dart';
import '../../core/widgets/widgets.dart';
import '../../data/models/lab.dart';
import '../../data/providers.dart';
import 'order_card.dart';

/// Tab "Hasil lab" di halaman pasien: Lab (nilai kritis + order) · Radiologi · Lainnya.
class HasilLabTab extends ConsumerStatefulWidget {
  const HasilLabTab({super.key, required this.noReg});

  final String noReg;

  @override
  ConsumerState<HasilLabTab> createState() => _HasilLabTabState();
}

class _HasilLabTabState extends ConsumerState<HasilLabTab> {
  int _segmen = 0;

  @override
  Widget build(BuildContext context) {
    final lab = ref.watch(labPasienProvider(widget.noReg));
    return AsyncBody(
      value: lab,
      judulGalat: 'Gagal memuat hasil lab',
      onRetry: () => ref.invalidate(labPasienProvider(widget.noReg)),
      builder: (l, diperbarui) => RefreshIndicator(
        onRefresh: () => ref.refresh(labPasienProvider(widget.noReg).future),
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s4, AppSpacing.s4, AppSpacing.s6),
          children: [
            SegmentedTabs(
              segmen: [
                (label: 'Lab', count: l.order.length),
                (label: 'Radiologi', count: l.radiologi.length),
                (label: 'Lainnya', count: l.lainnya.length),
              ],
              selected: _segmen,
              onChanged: (i) => setState(() => _segmen = i),
            ),
            const SizedBox(height: AppSpacing.s4),
            ...switch (_segmen) {
              0 => _lab(l),
              1 => _penunjang(l.radiologi, kosong: 'Belum ada pemeriksaan radiologi'),
              _ => _penunjang(l.lainnya, kosong: 'Belum ada pemeriksaan lain'),
            },
          ],
        ),
      ),
    );
  }

  List<Widget> _lab(LabPasien l) {
    final luar = l.hasil.where((h) => h.diLuarRujukan).length;
    return [
      if (l.nilaiKritis != null) ...[
        BannerKritis(
          kritis: l.nilaiKritis!,
          onTap: () => context.push(Routes.labTren(widget.noReg, l.nilaiKritis!.item)),
        ),
        const SizedBox(height: AppSpacing.s4),
      ],
      if (l.hasil.isNotEmpty) ...[
        ListCard(
          children: [
            ListCardItem(
              leading: Icon(Icons.fact_check_outlined, color: context.warna.brand),
              title: 'Semua nilai hari ini',
              subtitle: '${l.hasil.length} nilai · $luar di luar rujukan',
              subtitleColor: luar > 0 ? context.warna.danger : null,
              onTap: () => context.push(Routes.labHariIni(widget.noReg)),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.s6),
      ],
      SectionTitle('Order hari ini', trailing: '${l.order.length} order'),
      const SizedBox(height: AppSpacing.s3),
      if (l.order.isEmpty)
        const EmptyState(icon: Icons.science_outlined, title: 'Belum ada order lab')
      else
        for (final o in l.order)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.s3),
            child: OrderCard(order: o, onTap: () => context.push(Routes.labOrder(widget.noReg, o.noTrx))),
          ),
    ];
  }

  List<Widget> _penunjang(List<Penunjang> list, {required String kosong}) => [
    if (list.isEmpty)
      EmptyState(icon: Icons.image_search_outlined, title: kosong)
    else
      ListCard(
        children: [
          for (final p in list)
            Padding(
              padding: const EdgeInsets.all(AppSpacing.s4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: Text(p.pemeriksaan, style: context.teks.bodyStrong)),
                      StatusChip(
                        p.status,
                        tone: p.status.toLowerCase().startsWith('selesai') ? ChipTone.success : ChipTone.warn,
                      ),
                    ],
                  ),
                  if (p.dipesan != null) Text('Dipesan ${p.dipesan}', style: context.teks.small),
                  if (p.hasil != null) ...[
                    const SizedBox(height: AppSpacing.s2),
                    Text(p.hasil!, style: context.teks.body),
                  ],
                ],
              ),
            ),
        ],
      ),
  ];
}

/// Nilai kritis + status konfirmasi dari Medinfras. Konfirmasi tidak dilakukan di aplikasi.
class BannerKritis extends StatelessWidget {
  const BannerKritis({super.key, required this.kritis, this.onTap});

  final NilaiKritis kritis;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final belum = kritis.statusKonfirmasi.toLowerCase().startsWith('belum');
    final fg = belum ? context.warna.onDanger : context.warna.dangerStrong;
    return Material(
      color: belum ? context.warna.dangerFill : context.warna.dangerSoft,
      borderRadius: const BorderRadius.all(AppRadius.md),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.s4),
          child: Row(
            children: [
              Icon(Icons.warning_amber_rounded, color: fg, size: AppSize.icon),
              const SizedBox(width: AppSpacing.s3),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kritis: ${kritis.item} ${kritis.nilai}', style: context.teks.section.copyWith(color: fg)),
                    Text(
                      'Lab ${kritis.dilaporkan} · ${kritis.statusKonfirmasi.toLowerCase()}',
                      style: context.teks.caption.copyWith(color: fg),
                    ),
                  ],
                ),
              ),
              if (onTap != null) Icon(Icons.chevron_right, color: fg),
            ],
          ),
        ),
      ),
    );
  }
}
