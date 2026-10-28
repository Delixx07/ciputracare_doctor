import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';
import '../../../core/widgets/widgets.dart';
import '../../../data/models/disposisi.dart';
import '../../../data/models/kajian_awal.dart';
import '../../../data/providers.dart';

/// Tab "Disposisi": status disposisi dari Medinfras (hanya ditampilkan, diproses di Medinfras).
class DisposisiTab extends ConsumerWidget {
  const DisposisiTab({super.key, required this.noReg});

  final String noReg;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final disposisi = ref.watch(disposisiProvider(noReg));
    final diagnosa = ref.watch(kajianAwalProvider(noReg)).valueOrNull?.assessment.diagnosa;

    return AsyncBody(
      value: disposisi,
      judulGalat: 'Gagal memuat disposisi',
      onRetry: () => ref.invalidate(disposisiProvider(noReg)),
      builder: (d, diperbarui) => RefreshIndicator(
        onRefresh: () => ref.refresh(disposisiProvider(noReg).future),
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s4, AppSpacing.s4, AppSpacing.s6),
          children: [
            _KartuStatus(d),
            if (d.catatan != null && d.catatan!.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.s3),
              _BannerCatatan(d.catatan!),
            ],
            const SizedBox(height: AppSpacing.s6),
            const SectionTitle('Tindak lanjut'),
            const SizedBox(height: AppSpacing.s3),
            SurfaceCard(
              child: InfoRow(label: 'Rencana', value: d.rencana),
            ),
            const SizedBox(height: AppSpacing.s3),
            _Grid(
              isi: [('Ruang', d.ruang), ('DPJP', d.dpjp), ('Penjamin', d.penjamin), ('Indikasi rawat', d.indikasi)],
            ),
            const SizedBox(height: AppSpacing.s6),
            const SectionTitle('Diagnosis kerja · ICD-10'),
            const SizedBox(height: AppSpacing.s3),
            _Diagnosa(diagnosa),
          ],
        ),
      ),
    );
  }
}

class _KartuStatus extends StatelessWidget {
  const _KartuStatus(this.d);

  final Disposisi d;

  @override
  Widget build(BuildContext context) {
    final belum = d.status.toLowerCase().startsWith('belum');
    return SurfaceCard(
      child: Row(
        children: [
          Icon(
            belum ? Icons.pending_actions_outlined : Icons.task_alt,
            color: belum ? AppColors.amber : AppColors.success,
            size: AppSize.icon,
          ),
          const SizedBox(width: AppSpacing.s3),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Status disposisi', style: AppText.section),
                Text('Diproses di Medinfras', style: AppText.small),
              ],
            ),
          ),
          StatusChip(d.status, tone: belum ? ChipTone.warn : ChipTone.success),
        ],
      ),
    );
  }
}

/// Mis. "2 pemeriksaan lab masih diproses" + tombol lihat tab Hasil lab.
class _BannerCatatan extends StatelessWidget {
  const _BannerCatatan(this.catatan);

  final String catatan;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s2, AppSpacing.s2, AppSpacing.s2),
      decoration: const BoxDecoration(color: AppColors.amberSoft, borderRadius: BorderRadius.all(AppRadius.md)),
      child: Row(
        children: [
          const Icon(Icons.info_outline, color: AppColors.amber, size: AppSize.icon),
          const SizedBox(width: AppSpacing.s3),
          Expanded(
            child: Text(catatan, style: AppText.bodyStrong.copyWith(color: AppColors.amber)),
          ),
          TextButton(
            onPressed: () => DefaultTabController.of(context).animateTo(PasienTab.lab.index),
            child: const Text('Lihat'),
          ),
        ],
      ),
    );
  }
}

class _Grid extends StatelessWidget {
  const _Grid({required this.isi});

  final List<(String, String?)> isi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < isi.length; i += 2) ...[
          if (i > 0) const SizedBox(height: AppSpacing.s3),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var j = i; j < i + 2 && j < isi.length; j++) ...[
                  if (j > i) const SizedBox(width: AppSpacing.s3),
                  Expanded(
                    child: SurfaceCard(
                      child: InfoRow(label: isi[j].$1, value: isi[j].$2 ?? ''),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ],
    );
  }
}

class _Diagnosa extends StatelessWidget {
  const _Diagnosa(this.diagnosa);

  final List<Diagnosa>? diagnosa;

  @override
  Widget build(BuildContext context) {
    final d = diagnosa;
    if (d == null) return const Center(child: CircularProgressIndicator());
    return ListCard(
      children: d.isEmpty
          ? [const ListCardItem(title: 'Belum ada diagnosis')]
          : [
              for (final x in d)
                ListCardItem(
                  leading: CodeBadge(x.kode),
                  title: x.nama,
                  trailing: Text(x.tipe, style: AppText.caption),
                ),
            ],
    );
  }
}
