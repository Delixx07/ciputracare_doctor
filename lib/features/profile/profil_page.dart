import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/routes.dart';
import '../../app/tab_page_header.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text.dart';
import '../../core/widgets/widgets.dart';
import '../../data/models/dokter.dart';
import '../../data/providers.dart';
import '../auth/auth_controller.dart';
import '../notif/notif_providers.dart';
import 'preferensi.dart';

const _versi = 'v1.0';

/// Profil dokter + pengaturan lokal (biometrik, notifikasi, PIN) + Keluar.
class ProfilPage extends ConsumerWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authControllerProvider);
    final dokter = auth.dokter ?? ref.watch(dokterProvider).valueOrNull;
    final pref = ref.watch(preferensiProvider);
    final belum = ref.watch(jumlahBelumDibacaProvider);
    final bioTersedia = ref.watch(biometrikTersediaProvider).valueOrNull ?? false;

    return Scaffold(
      backgroundColor: AppColors.canvas,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TabPageHeader(title: 'Profil', subtitle: [?dokter?.nama, ?dokter?.unit].join(' · ')),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s5, AppSpacing.s4, AppSpacing.s6),
              children: [
                if (dokter != null) _KartuDokter(dokter),
                const SizedBox(height: AppSpacing.s4),
                ListCard(
                  children: [
                    ListCardItem(
                      leading: const Icon(Icons.notifications_none, color: AppColors.goldStrong),
                      title: 'Notifikasi',
                      subtitle: belum == 0 ? 'Semua sudah dibaca' : '$belum belum dibaca',
                      onTap: () => context.push(Routes.notifikasi),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.s6),
                const SectionTitle('Keamanan dan pemberitahuan'),
                const SizedBox(height: AppSpacing.s3),
                ListCard(
                  children: [
                    _Saklar(
                      judul: 'Masuk dengan biometrik',
                      keterangan: !auth.punyaPin
                          ? 'Aktifkan "Ingat perangkat" saat masuk untuk memakai PIN & biometrik'
                          : bioTersedia
                          ? 'Sidik jari atau wajah'
                          : 'Perangkat ini tidak mendukung biometrik',
                      nilai: auth.biometrik,
                      onChanged: auth.punyaPin && bioTersedia
                          ? (v) async {
                              final ok = await ref.read(authControllerProvider.notifier).aturBiometrik(v);
                              if (!ok && context.mounted) {
                                ScaffoldMessenger.of(
                                  context,
                                ).showSnackBar(const SnackBar(content: Text('Biometrik tidak dapat diaktifkan.')));
                              }
                            }
                          : null,
                    ),
                    _Saklar(
                      judul: 'Hasil lab di luar rujukan',
                      keterangan: 'Notifikasi segera',
                      nilai: pref.notifLab,
                      onChanged: ref.read(preferensiProvider.notifier).aturNotifLab,
                    ),
                    _Saklar(
                      judul: 'Pasien baru triage 1–2',
                      keterangan: 'Bunyi dan getar',
                      nilai: pref.notifPasienBaru,
                      onChanged: ref.read(preferensiProvider.notifier).aturNotifPasienBaru,
                    ),
                    if (auth.punyaPin)
                      ListCardItem(
                        title: 'Ubah PIN',
                        subtitle: 'PIN hanya tersimpan di perangkat ini',
                        onTap: ref.read(authControllerProvider.notifier).mulaiUbahPin,
                      ),
                  ],
                ),
                const SizedBox(height: AppSpacing.s6),
                SizedBox(
                  height: AppSize.button,
                  child: FilledButton.tonal(
                    onPressed: () => _keluar(context, ref),
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.surfaceRaised,
                      foregroundColor: AppColors.danger,
                      side: const BorderSide(color: AppColors.line),
                    ),
                    child: const Text('Keluar'),
                  ),
                ),
                const SizedBox(height: AppSpacing.s4),
                Text(
                  'CiputraCare Doctor $_versi · data dari MEDINFRAS (hanya baca)',
                  style: AppText.small,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _keluar(BuildContext context, WidgetRef ref) async {
    final ya = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Keluar?'),
        content: const Text('Token, PIN, dan data sementara di perangkat ini akan dihapus.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Batal')),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: AppColors.danger),
            child: const Text('Keluar'),
          ),
        ],
      ),
    );
    if (ya == true) await ref.read(authControllerProvider.notifier).keluar();
  }
}

class _KartuDokter extends StatelessWidget {
  const _KartuDokter(this.dokter);

  final Dokter dokter;

  @override
  Widget build(BuildContext context) {
    final kata = dokter.nama.split(' ').where((k) => k.isNotEmpty && !k.endsWith('.')).toList();
    final inisial = kata.take(2).map((k) => k[0].toUpperCase()).join();
    final shift = dokter.shift;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s4),
      decoration: BoxDecoration(
        color: AppColors.surfaceRaised,
        borderRadius: const BorderRadius.all(AppRadius.lg),
        border: Border.all(color: AppColors.line),
        boxShadow: AppShadow.card,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.s05),
            decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.gold),
            child: CircleAvatar(
              radius: AppSpacing.s6 + AppSpacing.s1,
              backgroundColor: AppColors.brandSoft,
              child: Text(inisial, style: AppText.title.copyWith(color: AppColors.brand)),
            ),
          ),
          const SizedBox(width: AppSpacing.s4),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(dokter.nama, style: AppText.title),
                Text.rich(
                  TextSpan(
                    style: AppText.caption,
                    children: [
                      TextSpan(text: 'Dokter ${dokter.unit} · kode '),
                      TextSpan(
                        text: dokter.kode,
                        style: AppText.data.copyWith(color: AppColors.inkMuted),
                      ),
                    ],
                  ),
                ),
                if (shift != null && shift.isNotEmpty)
                  Text(
                    '${dokter.unit} · shift ${shift[0].toLowerCase()}${shift.substring(1)}',
                    style: AppText.caption.copyWith(color: AppColors.ink, fontWeight: FontWeight.w600),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Saklar extends StatelessWidget {
  const _Saklar({required this.judul, required this.keterangan, required this.nilai, required this.onChanged});

  final String judul;
  final String keterangan;
  final bool nilai;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: ListCardItem(
        title: judul,
        subtitle: keterangan,
        trailing: Switch(value: nilai, onChanged: onChanged),
      ),
    );
  }
}
