import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text.dart';
import '../../core/widgets/widgets.dart';
import '../../data/models/notifikasi.dart';
import '../../data/providers.dart';
import 'notif_providers.dart';

/// Notifikasi. "Tandai dibaca" hanya disimpan di perangkat ini.
class NotifikasiPage extends ConsumerStatefulWidget {
  const NotifikasiPage({super.key});

  @override
  ConsumerState<NotifikasiPage> createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends ConsumerState<NotifikasiPage> {
  /// `null` = semua.
  NotifikasiJenis? _filter;

  @override
  Widget build(BuildContext context) {
    final notif = ref.watch(notifikasiProvider);
    final dibaca = ref.watch(notifDibacaProvider);
    final belum = ref.watch(jumlahBelumDibacaProvider);
    final semua = notif.valueOrNull ?? const <Notifikasi>[];

    bool belumDibaca(Notifikasi n) => n.belumDibaca && !dibaca.contains(n.id);

    return Scaffold(
      backgroundColor: context.warna.canvas,
      appBar: AppBar(
        titleSpacing: context.canPop() ? 0 : AppSpacing.s4,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Notifikasi', style: context.teks.title),
            Text(belum == 0 ? 'Semua sudah dibaca' : '$belum belum dibaca', style: context.teks.caption),
          ],
        ),
        actions: [
          if (belum > 0)
            TextButton(
              onPressed: () => ref.read(notifDibacaProvider.notifier).tandai(semua.map((n) => n.id)),
              child: const Text('Tandai semua dibaca'),
            ),
          const SizedBox(width: AppSpacing.s2),
        ],
      ),
      body: AsyncBody(
        value: notif,
        judulGalat: 'Gagal memuat notifikasi',
        onRetry: () => ref.invalidate(notifikasiProvider),
        builder: (list, diperbarui) {
          final tampil = _filter == null ? list : list.where((n) => n.jenis == _filter).toList();
          return RefreshIndicator(
            onRefresh: () => ref.refresh(notifikasiProvider.future),
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s3, AppSpacing.s4, AppSpacing.s6),
              children: [
                Wrap(
                  spacing: AppSpacing.s2,
                  children: [
                    for (final (label, jenis) in [
                      ('Semua', null),
                      ('IGD', NotifikasiJenis.igd),
                      ('Lab', NotifikasiJenis.lab),
                    ])
                      FilterPill(
                        label: label,
                        selected: _filter == jenis,
                        onTap: () => setState(() => _filter = jenis),
                      ),
                  ],
                ),
                const SizedBox(height: AppSpacing.s3),
                if (tampil.isEmpty)
                  const EmptyState(icon: Icons.notifications_none, title: 'Tidak ada notifikasi')
                else
                  for (final n in tampil)
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.s2),
                      child: _BarisNotif(notif: n, belumDibaca: belumDibaca(n), onTap: () => _buka(n)),
                    ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _buka(Notifikasi n) {
    ref.read(notifDibacaProvider.notifier).tandai([n.id]);
    if (n.noReg != null) context.push(Routes.pasien(n.noReg!, tab: PasienTab.fromKey(n.tab)));
  }
}

class _BarisNotif extends StatelessWidget {
  const _BarisNotif({required this.notif, required this.belumDibaca, required this.onTap});

  final Notifikasi notif;
  final bool belumDibaca;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final n = notif;
    final (ikon, tone) = switch (n.tone) {
      NotifikasiTone.danger => (Icons.warning_amber_rounded, ChipTone.danger),
      NotifikasiTone.warn => (Icons.warning_amber_rounded, ChipTone.warn),
      NotifikasiTone.info => (
        n.jenis == NotifikasiJenis.lab ? Icons.science_outlined : Icons.medical_services_outlined,
        ChipTone.info,
      ),
      NotifikasiTone.neutral => (Icons.schedule, ChipTone.neutral),
    };

    return Material(
      color: belumDibaca ? context.warna.brandSoft : context.warna.surfaceRaised,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(AppRadius.lg),
        side: BorderSide(color: belumDibaca ? context.warna.brandPastel : context.warna.line),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.s3),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppSpacing.s8 + AppSpacing.s1,
                height: AppSpacing.s8 + AppSpacing.s1,
                decoration: BoxDecoration(
                  color: tone == ChipTone.info ? context.warna.surfaceRaised : tone.background(context.warna),
                  borderRadius: const BorderRadius.all(AppRadius.md),
                ),
                child: Icon(ikon, color: tone.foreground(context.warna), size: AppSize.icon - AppSpacing.s1),
              ),
              const SizedBox(width: AppSpacing.s3),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(n.judul, style: belumDibaca ? context.teks.bodyStrong : context.teks.body),
                        ),
                        const SizedBox(width: AppSpacing.s2),
                        Text(n.jam, style: context.teks.small),
                      ],
                    ),
                    Text(n.isi, style: context.teks.caption),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.s2),
              Semantics(
                label: belumDibaca ? 'Belum dibaca' : null,
                child: Padding(
                  padding: const EdgeInsets.only(top: AppSpacing.s2),
                  child: belumDibaca ? const StatusDot(tone: ChipTone.info) : const SizedBox(width: AppSize.dot),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
