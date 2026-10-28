import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/routes.dart';
import '../../app/tab_page_header.dart';
import '../../core/format/tanggal.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text.dart';
import '../../core/widgets/widgets.dart';
import '../../data/models/lab.dart';
import '../../data/providers.dart';

enum _Filter { semua, perhatian, diproses }

/// Tab Lab: hasil lab yang baru masuk untuk pasien IGD dokter.
class LabPage extends ConsumerStatefulWidget {
  const LabPage({super.key});

  @override
  ConsumerState<LabPage> createState() => _LabPageState();
}

class _LabPageState extends ConsumerState<LabPage> {
  _Filter _filter = _Filter.semua;
  DateTime _diperbarui = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final masuk = ref.watch(labMasukProvider);
    ref.listen(labMasukProvider, (_, next) {
      if (next.hasValue) setState(() => _diperbarui = DateTime.now());
    });

    return Scaffold(
      backgroundColor: AppColors.canvas,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TabPageHeader(
            title: 'Hasil lab masuk',
            label: 'Laboratorium',
            subtitle: 'Pasien IGD Anda · diperbarui ${formatJam(_diperbarui)}',
          ),
          Expanded(
            child: AsyncBody(
              value: masuk,
              judulGalat: 'Gagal memuat hasil lab',
              onRetry: () => ref.invalidate(labMasukProvider),
              builder: (semua, diperbarui) =>
                  RefreshIndicator(onRefresh: () => ref.refresh(labMasukProvider.future), child: _daftar(semua)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _daftar(List<LabMasuk> semua) {
    bool cocok(LabMasuk m, _Filter f) => switch (f) {
      _Filter.semua => true,
      _Filter.perhatian => m.perluPerhatian,
      _Filter.diproses => m.status == StatusLabMasuk.diproses,
    };
    final tampil = semua.where((m) => cocok(m, _filter)).toList();
    const label = {_Filter.semua: 'Semua', _Filter.perhatian: 'Perlu perhatian', _Filter.diproses: 'Diproses'};

    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s4, AppSpacing.s4, AppSpacing.s6),
      children: [
        Wrap(
          spacing: AppSpacing.s2,
          runSpacing: AppSpacing.s2,
          children: [
            for (final f in _Filter.values)
              FilterPill(
                label: label[f]!,
                count: semua.where((m) => cocok(m, f)).length,
                selected: _filter == f,
                onTap: () => setState(() => _filter = f),
              ),
          ],
        ),
        const SizedBox(height: AppSpacing.s4),
        if (tampil.isEmpty)
          const EmptyState(icon: Icons.science_outlined, title: 'Tidak ada hasil lab')
        else
          for (final m in tampil)
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.s3),
              child: _KartuMasuk(
                masuk: m,
                onTap: () => context.push(Routes.pasien(m.noReg, tab: PasienTab.lab)),
              ),
            ),
      ],
    );
  }
}

class _KartuMasuk extends StatelessWidget {
  const _KartuMasuk({required this.masuk, required this.onTap});

  final LabMasuk masuk;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final m = masuk;
    final kritisBaru = m.status == StatusLabMasuk.kritis;
    final warnaRingkas = switch (m.status) {
      StatusLabMasuk.kritis || StatusLabMasuk.kritisDikonfirmasi || StatusLabMasuk.abnormal => AppColors.danger,
      StatusLabMasuk.diproses => AppColors.amber,
      StatusLabMasuk.normal => AppColors.success,
    };
    final inisial = m.nama.split(' ').where((k) => k.isNotEmpty).take(2).map((k) => k[0].toUpperCase()).join();

    return Material(
      color: AppColors.surfaceRaised,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(AppRadius.lg),
        side: BorderSide(
          color: kritisBaru ? AppColors.danger : AppColors.line,
          width: kritisBaru ? AppSize.strokeEmphasis : AppSize.strokeThin,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.s4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: AppSpacing.s5,
                backgroundColor: AppColors.brandSoft,
                child: Text(
                  inisial,
                  style: AppText.caption.copyWith(color: AppColors.brand, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(width: AppSpacing.s3),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Expanded(child: Text(m.nama, style: AppText.bodyStrong)),
                        Text('${m.bed} · ${m.jam}', style: AppText.small),
                      ],
                    ),
                    Text(m.pemeriksaan, style: AppText.caption),
                    const SizedBox(height: AppSpacing.s1),
                    Text(
                      m.ringkasan,
                      style: AppText.caption.copyWith(color: warnaRingkas, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
