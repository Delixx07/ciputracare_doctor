import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';
import '../../../core/widgets/widgets.dart';
import '../../../data/models/cppt.dart';
import '../../../data/providers.dart';

/// Kelompok PPA untuk filter.
enum JenisPpa {
  dokter('Dokter'),
  perawat('Perawat'),
  lainnya('Lainnya');

  const JenisPpa(this.label);

  final String label;

  /// Dari "dr. Andreas Wijaya · Dokter IGD" / "Ns. Rudi Hartanto · Perawat".
  static JenisPpa dari(Cppt c) {
    final ppa = c.ppa.toLowerCase();
    if (ppa.startsWith('dr.') || ppa.contains('dokter')) return dokter;
    if (ppa.startsWith('ns.') || ppa.contains('perawat')) return perawat;
    return lainnya;
  }
}

/// Tab "Catatan" (CPPT): daftar catatan + filter PPA. Status verifikasi hanya ditampilkan.
class CatatanTab extends ConsumerStatefulWidget {
  const CatatanTab({super.key, required this.noReg});

  final String noReg;

  @override
  ConsumerState<CatatanTab> createState() => _CatatanTabState();
}

class _CatatanTabState extends ConsumerState<CatatanTab> {
  /// `null` = semua PPA.
  JenisPpa? _filter;

  @override
  Widget build(BuildContext context) {
    final cppt = ref.watch(cpptProvider(widget.noReg));
    return AsyncBody(
      value: cppt,
      judulGalat: 'Gagal memuat catatan',
      onRetry: () => ref.invalidate(cpptProvider(widget.noReg)),
      builder: (semua, diperbarui) {
        final jumlah = {for (final j in JenisPpa.values) j: semua.where((c) => JenisPpa.dari(c) == j).length};
        final tampil = _filter == null ? semua : semua.where((c) => JenisPpa.dari(c) == _filter).toList();
        final belum = semua.where((c) => !c.terverifikasi).length;

        return RefreshIndicator(
          onRefresh: () => ref.refresh(cpptProvider(widget.noReg).future),
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s4, AppSpacing.s4, AppSpacing.s6),
            children: [
              Wrap(
                spacing: AppSpacing.s2,
                runSpacing: AppSpacing.s2,
                children: [
                  FilterPill(
                    label: 'Semua PPA',
                    count: semua.length,
                    selected: _filter == null,
                    onTap: () => _pilih(null),
                  ),
                  for (final j in JenisPpa.values)
                    if (j != JenisPpa.lainnya || jumlah[j]! > 0)
                      FilterPill(label: j.label, count: jumlah[j]!, selected: _filter == j, onTap: () => _pilih(j)),
                ],
              ),
              const SizedBox(height: AppSpacing.s3),
              Text(
                [
                  '${semua.length} catatan',
                  belum == 0 ? 'semua terverifikasi' : '$belum belum diverifikasi',
                ].join(' · '),
                style: context.teks.caption,
              ),
              const SizedBox(height: AppSpacing.s3),
              if (tampil.isEmpty)
                EmptyState(
                  icon: Icons.notes_outlined,
                  title: semua.isEmpty
                      ? 'Belum ada catatan perkembangan'
                      : 'Tidak ada catatan ${_filter!.label.toLowerCase()}',
                )
              else
                for (final c in tampil)
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.s3),
                    child: KartuCppt(cppt: c),
                  ),
            ],
          ),
        );
      },
    );
  }

  void _pilih(JenisPpa? j) => setState(() => _filter = j);
}

/// Satu catatan CPPT: penulis, waktu, status verifikasi, SOAP.
class KartuCppt extends StatelessWidget {
  const KartuCppt({super.key, required this.cppt});

  final Cppt cppt;

  @override
  Widget build(BuildContext context) {
    final c = cppt;
    return SurfaceCard(
      bayangan: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(c.ppa, style: context.teks.bodyStrong),
                    Text(c.waktu, style: context.teks.small),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.s2),
              c.terverifikasi
                  ? const StatusChip('Terverifikasi', tone: ChipTone.success, icon: Icons.check)
                  : const StatusChip('Belum diverifikasi', tone: ChipTone.warn, icon: Icons.warning_amber_rounded),
            ],
          ),
          const SizedBox(height: AppSpacing.s3),
          for (final (huruf, isi) in [('S', c.s), ('O', c.o), ('A', c.a), ('P', c.p)])
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.s1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: AppSpacing.s6,
                    child: Text(huruf, style: context.teks.bodyStrong),
                  ),
                  Expanded(child: Text(isi.isEmpty ? '–' : isi, style: context.teks.body)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
