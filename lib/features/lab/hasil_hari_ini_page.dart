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
import 'lab_format.dart';

/// Semua nilai lab hari ini, dikelompokkan per order. Default: hanya di luar rujukan.
class HasilHariIniPage extends ConsumerStatefulWidget {
  const HasilHariIniPage({super.key, required this.noReg});

  final String noReg;

  @override
  ConsumerState<HasilHariIniPage> createState() => _HasilHariIniPageState();
}

class _HasilHariIniPageState extends ConsumerState<HasilHariIniPage> {
  bool _hanyaLuar = true;

  @override
  Widget build(BuildContext context) {
    final lab = ref.watch(labPasienProvider(widget.noReg));
    final h = ref.watch(headerPasienProvider(widget.noReg)).valueOrNull;
    final selesai = lab.valueOrNull?.order.where((o) => o.selesai).length;

    return Scaffold(
      backgroundColor: AppColors.canvas,
      appBar: AppBar(
        titleSpacing: context.canPop() ? 0 : AppSpacing.s4,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hasil lab hari ini', style: AppText.title),
            Text(
              [?h?.nama, ?h?.bed, if (selesai != null) '$selesai order selesai'].join(' · '),
              style: AppText.caption,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      body: AsyncBody(
        value: lab,
        judulGalat: 'Gagal memuat hasil lab',
        onRetry: () => ref.invalidate(labPasienProvider(widget.noReg)),
        builder: (d, _) =>
            RefreshIndicator(onRefresh: () => ref.refresh(labPasienProvider(widget.noReg).future), child: _isi(d)),
      ),
    );
  }

  Widget _isi(LabPasien l) {
    final luar = l.hasil.where((h) => h.diLuarRujukan).length;
    final terpakai = <String>{};
    final kelompok = <(String, String?, List<HasilLab>)>[];
    for (final o in l.order.where((o) => o.item.isNotEmpty)) {
      final items = l.hasil.where((h) => o.item.contains(h.item)).toList();
      terpakai.addAll(items.map((h) => h.item));
      final sampel = o.waktu.length > 1 ? o.waktu[1] : null;
      final validasi = o.waktu.length > 3 ? o.waktu[3] : null;
      kelompok.add((
        o.judul,
        [if (sampel != null) 'sampel $sampel', if (validasi != null) 'validasi $validasi'].join(' · '),
        items,
      ));
    }
    final sisa = l.hasil.where((h) => !terpakai.contains(h.item)).toList();
    if (sisa.isNotEmpty) kelompok.add(('Lainnya', null, sisa));

    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s4, AppSpacing.s4, AppSpacing.s6),
      children: [
        SegmentedTabs(
          segmen: [(label: 'Di luar rujukan', count: luar), (label: 'Semua', count: l.hasil.length)],
          selected: _hanyaLuar ? 0 : 1,
          onChanged: (i) => setState(() => _hanyaLuar = i == 0),
        ),
        const SizedBox(height: AppSpacing.s4),
        if (_hanyaLuar && luar == 0) const EmptyState(icon: Icons.task_alt, title: 'Semua nilai dalam rujukan'),
        for (final (judul, keterangan, items) in kelompok) ..._kelompok(judul, keterangan, items),
      ],
    );
  }

  List<Widget> _kelompok(String judul, String? keterangan, List<HasilLab> items) {
    final tampil = urutHasil(_hanyaLuar ? items.where((h) => h.diLuarRujukan) : items);
    if (tampil.isEmpty) return const [];
    return [
      SectionTitle(judul, trailing: keterangan == null || keterangan.isEmpty ? null : keterangan),
      const SizedBox(height: AppSpacing.s3),
      ListCard(
        children: [
          for (final h in tampil)
            LabValueRow(
              item: h.item,
              value: h.nilai,
              unit: h.satuan,
              rujukan: h.rujukan,
              sebelumnya: h.sebelumnya,
              status: statusDariFlag(h.flag),
              onTap: () => context.push(Routes.labTren(widget.noReg, h.item)),
            ),
        ],
      ),
      const SizedBox(height: AppSpacing.s5),
    ];
  }
}
