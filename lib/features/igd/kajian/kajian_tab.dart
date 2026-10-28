import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';
import '../../../core/widgets/widgets.dart';
import '../../../data/models/kajian_awal.dart';
import '../../../data/providers.dart';
import 'bagian_kajian.dart';

/// Tab "Kajian awal" di halaman pasien: triage, kelengkapan, daftar 6 bagian.
class KajianTab extends ConsumerWidget {
  const KajianTab({super.key, required this.noReg});

  final String noReg;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final kajian = ref.watch(kajianAwalProvider(noReg));
    return AsyncBody(
      value: kajian,
      judulGalat: 'Gagal memuat kajian awal',
      onRetry: () => ref.invalidate(kajianAwalProvider(noReg)),
      builder: (k, diperbarui) => RefreshIndicator(
        onRefresh: () => ref.refresh(kajianAwalProvider(noReg).future),
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s4, AppSpacing.s4, AppSpacing.s6),
          children: [
            _KartuTriage(k.triage),
            const SizedBox(height: AppSpacing.s5),
            _Kelengkapan(k),
            const SizedBox(height: AppSpacing.s3),
            ListCard(
              children: [
                for (final b in BagianKajian.values)
                  _BarisBagian(bagian: b, kajian: k, onTap: () => context.push(Routes.kajian(noReg, b.nomor))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Triage ditampilkan (bukan dipilih): skala 1–5, level aktif terisi.
class _KartuTriage extends StatelessWidget {
  const _KartuTriage(this.triage);

  final TriageKajian triage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionTitle('Triage · ${triage.skala}', trailing: 'Perawat: ${triage.olehPerawat}'),
        const SizedBox(height: AppSpacing.s3),
        Semantics(
          label: 'Triage level ${triage.level}, ${namaTriage(triage.level)}',
          excludeSemantics: true,
          child: Row(
            children: [
              for (var level = 1; level <= 5; level++) ...[
                if (level > 1) const SizedBox(width: AppSpacing.s2),
                Expanded(
                  child: _SelTriage(level: level, aktif: level == triage.level),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _SelTriage extends StatelessWidget {
  const _SelTriage({required this.level, required this.aktif});

  final int level;
  final bool aktif;

  @override
  Widget build(BuildContext context) {
    final tone = triageTone(level);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.s2),
      decoration: BoxDecoration(
        color: aktif ? tone.foreground : AppColors.surfaceRaised,
        borderRadius: const BorderRadius.all(AppRadius.md),
        border: Border.all(color: aktif ? tone.foreground : AppColors.line),
      ),
      child: Column(
        children: [
          Text('$level', style: AppText.section.copyWith(color: aktif ? AppColors.onBrand : AppColors.inkMuted)),
          Text(
            namaTriage(level),
            style: AppText.small.copyWith(
              color: aktif ? AppColors.onBrand : AppColors.inkMuted,
              fontWeight: aktif ? FontWeight.w700 : FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class _Kelengkapan extends StatelessWidget {
  const _Kelengkapan(this.k);

  final KajianAwal k;

  @override
  Widget build(BuildContext context) {
    final total = BagianKajian.values.length;
    final lengkap = BagianKajian.values.where((b) => b.lengkap(k)).length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionTitle('Kelengkapan kajian', trailing: '$lengkap dari $total bagian'),
        const SizedBox(height: AppSpacing.s2),
        ClipRRect(
          borderRadius: const BorderRadius.all(AppRadius.pill),
          child: LinearProgressIndicator(
            value: lengkap / total,
            minHeight: AppSpacing.s1 + AppSpacing.s05,
            backgroundColor: AppColors.line,
            color: lengkap == total ? AppColors.success : AppColors.brand,
          ),
        ),
      ],
    );
  }
}

class _BarisBagian extends StatelessWidget {
  const _BarisBagian({required this.bagian, required this.kajian, required this.onTap});

  final BagianKajian bagian;
  final KajianAwal kajian;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final lengkap = bagian.lengkap(kajian);
    return ListCardItem(
      leading: Container(
        width: AppSize.icon,
        height: AppSize.icon,
        alignment: Alignment.center,
        decoration: BoxDecoration(shape: BoxShape.circle, color: lengkap ? AppColors.successSoft : AppColors.brand),
        child: lengkap
            ? const Icon(Icons.check, size: AppSize.iconSm, color: AppColors.success)
            : Text(
                '${bagian.nomor}',
                style: AppText.small.copyWith(color: AppColors.onBrand, fontWeight: FontWeight.w700),
              ),
      ),
      title: bagian.judulDaftar,
      subtitle: lengkap ? bagian.ringkasan(kajian) : 'Belum lengkap di Medinfras',
      subtitleColor: lengkap ? null : AppColors.amber,
      onTap: onTap,
    );
  }
}
