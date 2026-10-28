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
import '../../data/models/beranda.dart';
import '../../data/models/dokter.dart';
import '../../data/providers.dart';
import '../auth/auth_controller.dart';

/// Beranda: hal yang perlu perhatian, angka pasien & hasil lab, serah terima.
class BerandaPage extends ConsumerWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dokter = ref.watch(authControllerProvider).dokter ?? ref.watch(dokterProvider).valueOrNull;
    final ringkasan = ref.watch(ringkasanBerandaProvider);
    final sekarang = DateTime.now();

    return Scaffold(
      backgroundColor: context.warna.canvas,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TabPageHeader(title: judulSapaan(sekarang, dokter), subtitle: subjudulShift(sekarang, dokter)),
          Expanded(
            child: AsyncBody(
              value: ringkasan,
              judulGalat: 'Gagal memuat beranda',
              onRetry: () => ref.invalidate(ringkasanBerandaProvider),
              builder: (r, diperbarui) => RefreshIndicator(
                onRefresh: () => ref.refresh(ringkasanBerandaProvider.future),
                child: _Isi(ringkasan: r, diperbarui: diperbarui),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// "Selamat pagi, dr. Andreas" (nama depan saja).
String judulSapaan(DateTime t, Dokter? dokter) {
  final sapa = switch (t.hour) {
    >= 4 && < 11 => 'Selamat pagi',
    >= 11 && < 15 => 'Selamat siang',
    >= 15 && < 18 => 'Selamat sore',
    _ => 'Selamat malam',
  };
  if (dokter == null) return sapa;
  final kata = dokter.nama.split(' ');
  final nama = kata.length > 2 ? kata.take(2).join(' ') : dokter.nama;
  return '$sapa, $nama';
}

/// "Rabu, 28 Okt · Shift pagi 07–14".
String subjudulShift(DateTime t, Dokter? dokter) {
  final shift = dokter?.shift;
  return [
    formatHariTanggal(t),
    if (shift != null && shift.isNotEmpty) 'Shift ${shift[0].toLowerCase()}${shift.substring(1)}',
  ].join(' · ');
}

class _Isi extends StatelessWidget {
  const _Isi({required this.ringkasan, required this.diperbarui});

  final RingkasanBeranda ringkasan;
  final DateTime diperbarui;

  @override
  Widget build(BuildContext context) {
    final r = ringkasan;
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s5, AppSpacing.s4, AppSpacing.s6),
      children: [
        const SectionTitle('Perlu perhatian'),
        const SizedBox(height: AppSpacing.s3),
        ListCard(
          children: r.perhatian.isEmpty
              ? [const ListCardItem(title: 'Tidak ada yang perlu perhatian')]
              : [for (final item in r.perhatian) _ItemPerhatianRow(item)],
        ),
        const SizedBox(height: AppSpacing.s6),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: _KartuAngka(
                  label: 'Pasien IGD saya',
                  angka: r.pasienSaya,
                  keterangan: 'dari ${r.pasienIgd} pasien di IGD',
                  onTap: () => context.go(Routes.igd),
                ),
              ),
              const SizedBox(width: AppSpacing.s3),
              Expanded(
                child: _KartuAngka(
                  label: 'Hasil lab baru',
                  angka: r.labSelesai,
                  keterangan: r.labDiproses == 0 ? 'semua selesai' : '${r.labDiproses} masih diproses',
                  onTap: () => context.go(Routes.lab),
                ),
              ),
            ],
          ),
        ),
        if (r.serahTerima != null) ...[const SizedBox(height: AppSpacing.s6), _KartuSerahTerima(r.serahTerima!)],
        const SizedBox(height: AppSpacing.s5),
        Text(
          'Diperbarui ${formatJam(diperbarui)} · tarik ke bawah untuk memuat ulang',
          style: context.teks.small,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _ItemPerhatianRow extends StatelessWidget {
  const _ItemPerhatianRow(this.item);

  final ItemPerhatian item;

  @override
  Widget build(BuildContext context) {
    final (tone, tab) = switch (item.jenis) {
      JenisPerhatian.nilaiKritis => (ChipTone.danger, PasienTab.lab),
      JenisPerhatian.kajianBelumDiisi => (ChipTone.warn, PasienTab.kajian),
      JenisPerhatian.cpptBelumDiverifikasi => (ChipTone.warn, PasienTab.catatan),
    };
    return ListCardItem(
      leading: StatusDot(tone: tone),
      title: item.judul,
      subtitle: item.keterangan,
      onTap: () => context.push(Routes.pasien(item.noReg, tab: tab)),
    );
  }
}

class _KartuAngka extends StatelessWidget {
  const _KartuAngka({required this.label, required this.angka, required this.keterangan, required this.onTap});

  final String label;
  final int angka;
  final String keterangan;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.warna.surfaceRaised,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(AppRadius.lg),
        side: BorderSide(color: context.warna.line),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.s4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: context.teks.caption.copyWith(color: context.warna.ink)),
              const SizedBox(height: AppSpacing.s1),
              Text('$angka', style: context.teks.display),
              const SizedBox(height: AppSpacing.s1),
              Text(keterangan, style: context.teks.small),
            ],
          ),
        ),
      ),
    );
  }
}

class _KartuSerahTerima extends StatelessWidget {
  const _KartuSerahTerima(this.serahTerima);

  final SerahTerima serahTerima;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s4),
      decoration: BoxDecoration(color: context.warna.goldSoft, borderRadius: BorderRadius.all(AppRadius.lg)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ['Serah terima', if (serahTerima.dari.isNotEmpty) serahTerima.dari].join(' · '),
            style: context.teks.caption.copyWith(color: context.warna.goldStrong, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.s1),
          Text(serahTerima.isi, style: context.teks.body),
        ],
      ),
    );
  }
}
