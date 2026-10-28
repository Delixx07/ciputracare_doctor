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
import '../../data/models/pasien_igd.dart';
import '../../data/providers.dart';
import '../auth/auth_controller.dart';
import 'pasien_card.dart';
import 'saring_pasien.dart';

/// Daftar pasien IGD: Pasien saya / Semua IGD, cari, urut triage lalu jam datang.
class IgdListPage extends ConsumerStatefulWidget {
  const IgdListPage({super.key});

  @override
  ConsumerState<IgdListPage> createState() => _IgdListPageState();
}

class _IgdListPageState extends ConsumerState<IgdListPage> {
  final _cari = TextEditingController();
  bool _hanyaSaya = true;

  @override
  void dispose() {
    _cari.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pasien = ref.watch(daftarPasienIgdProvider);
    final dokter = ref.watch(authControllerProvider).dokter;

    return Scaffold(
      backgroundColor: context.warna.canvas,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TabPageHeader(
            title: 'Pasien IGD',
            label: 'Emergency Unit',
            subtitle: [formatHariTanggal(DateTime.now()), ?dokter?.nama].join(' · '),
          ),
          Expanded(
            child: AsyncBody(
              value: pasien,
              judulGalat: 'Gagal memuat pasien',
              onRetry: () => ref.invalidate(daftarPasienIgdProvider),
              builder: (semua, diperbarui) => RefreshIndicator(
                onRefresh: () => ref.refresh(daftarPasienIgdProvider.future),
                child: _daftar(semua, diperbarui),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _daftar(List<PasienIgd> semua, DateTime diperbarui) {
    final kueri = _cari.text.trim();
    final tampil = saringPasien(semua, hanyaSaya: _hanyaSaya, kueri: kueri);
    final keterangan = kueri.isEmpty
        ? '${tampil.length} pasien · urut triage, lalu jam datang · diperbarui ${formatJam(diperbarui)}'
        : '${tampil.length} hasil untuk “$kueri”';

    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s4, AppSpacing.s4, AppSpacing.s6),
      children: [
        SegmentedTabs(
          segmen: [
            (label: 'Pasien saya', count: semua.where((p) => p.milikSaya).length),
            (label: 'Semua IGD', count: semua.length),
          ],
          selected: _hanyaSaya ? 0 : 1,
          onChanged: (i) => setState(() => _hanyaSaya = i == 0),
        ),
        const SizedBox(height: AppSpacing.s3),
        _KolomCari(controller: _cari, onChanged: () => setState(() {})),
        const SizedBox(height: AppSpacing.s4),
        Text(keterangan, style: context.teks.caption),
        const SizedBox(height: AppSpacing.s3),
        if (tampil.isEmpty)
          EmptyState(
            icon: kueri.isEmpty ? Icons.bed_outlined : Icons.search_off,
            title: kueri.isEmpty ? 'Belum ada pasien' : 'Pasien tidak ditemukan',
            message: kueri.isEmpty ? null : 'Coba nama lain, No. RM, atau No. registrasi.',
          )
        else
          for (final p in tampil)
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.s3),
              child: PasienCard(pasien: p, onTap: () => context.push(Routes.pasien(p.noReg))),
            ),
      ],
    );
  }
}

class _KolomCari extends StatelessWidget {
  const _KolomCari({required this.controller, required this.onChanged});

  final TextEditingController controller;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: const BorderRadius.all(AppRadius.pill),
      borderSide: BorderSide(color: context.warna.line),
    );
    return TextField(
      controller: controller,
      onChanged: (_) => onChanged(),
      textInputAction: TextInputAction.search,
      style: context.teks.body,
      decoration: InputDecoration(
        filled: true,
        fillColor: context.warna.surfaceRaised,
        hintText: 'Cari nama, No. RM, atau No. registrasi',
        prefixIcon: const Icon(Icons.search),
        suffixIcon: controller.text.isEmpty
            ? null
            : IconButton(
                tooltip: 'Hapus pencarian',
                icon: const Icon(Icons.close),
                onPressed: () {
                  controller.clear();
                  onChanged();
                },
              ),
        contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4, vertical: AppSpacing.s3),
        border: border,
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: context.warna.brand, width: AppSize.stroke),
        ),
      ),
    );
  }
}
