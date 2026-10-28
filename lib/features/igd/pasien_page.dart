import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text.dart';
import '../../core/widgets/widgets.dart';
import '../../data/models/header_pasien.dart';
import '../../data/providers.dart';
import '../../data/repositories/repository_exception.dart';
import '../lab/hasil_lab_tab.dart';
import 'catatan/catatan_tab.dart';
import 'disposisi/disposisi_tab.dart';
import 'kajian/kajian_tab.dart';
import '../notif/notif_providers.dart';

/// Halaman pasien: header pasien + tab Kajian awal · Catatan · Hasil lab · Disposisi.
/// Isi tab dibuat di langkah 8–11.
class PasienPage extends ConsumerWidget {
  const PasienPage({super.key, required this.noReg, this.initialTab = PasienTab.kajian});

  final String noReg;
  final PasienTab initialTab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final header = ref.watch(headerPasienProvider(noReg));
    final h = header.valueOrNull;

    final Widget body;
    if (header.error is DataTidakDitemukan) {
      body = const EmptyState(
        icon: Icons.person_search_outlined,
        title: 'Data pasien belum tersedia',
        message: 'Rekam pasien ini tidak ada di data contoh.',
      );
    } else if (header.hasError && h == null) {
      body = EmptyState(
        icon: Icons.cloud_off_outlined,
        title: 'Gagal memuat pasien',
        message: 'Periksa koneksi lalu coba lagi.',
        onRetry: () => ref.invalidate(headerPasienProvider(noReg)),
      );
    } else if (h == null) {
      body = const Center(child: CircularProgressIndicator());
    } else {
      body = Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PatientHeader(header: h),
          Material(
            color: context.warna.surfaceRaised,
            child: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              tabs: [for (final t in PasienTab.values) Tab(text: t.label)],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                KajianTab(noReg: noReg),
                CatatanTab(noReg: noReg),
                HasilLabTab(noReg: noReg),
                DisposisiTab(noReg: noReg),
              ],
            ),
          ),
        ],
      );
    }

    return DefaultTabController(
      length: PasienTab.values.length,
      initialIndex: initialTab.index,
      child: Scaffold(
        backgroundColor: context.warna.canvas,
        appBar: AppBar(
          // Rapat ke tombol kembali; tanpa tombol kembali tetap berjarak gutter.
          titleSpacing: context.canPop() ? 0 : AppSpacing.s4,
          title: h == null ? const Text('Pasien') : _JudulPasien(h),
          actions: const [_LoncengNotifikasi()],
        ),
        body: body,
      ),
    );
  }
}

/// Nama + "Bed 2 · 36 th · L · RM 00-03-17-42" (No. RM huruf mono).
class _JudulPasien extends StatelessWidget {
  const _JudulPasien(this.h);

  final HeaderPasien h;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(h.nama, style: context.teks.title, overflow: TextOverflow.ellipsis),
        Text.rich(
          TextSpan(
            style: context.teks.caption,
            children: [
              TextSpan(text: '${h.bed} · ${h.umur} · ${h.jk} · RM '),
              TextSpan(
                text: h.noRm,
                style: context.teks.data.copyWith(color: context.warna.inkMuted),
              ),
            ],
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _LoncengNotifikasi extends ConsumerWidget {
  const _LoncengNotifikasi();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jumlah = ref.watch(jumlahBelumDibacaProvider);
    return IconButton(
      tooltip: jumlah > 0 ? 'Notifikasi, $jumlah belum dibaca' : 'Notifikasi',
      onPressed: () => context.push(Routes.notifikasi),
      icon: Badge(
        isLabelVisible: jumlah > 0,
        backgroundColor: context.warna.dangerFill,
        label: Text('$jumlah'),
        child: const Icon(Icons.notifications_none),
      ),
    );
  }
}
