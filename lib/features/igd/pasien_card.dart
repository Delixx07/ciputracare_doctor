import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text.dart';
import '../../core/widgets/triage_tile.dart';
import '../../data/models/pasien_igd.dart';

/// Kartu satu pasien di daftar IGD.
class PasienCard extends StatelessWidget {
  const PasienCard({super.key, required this.pasien, required this.onTap});

  final PasienIgd pasien;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final p = pasien;
    return Container(
      decoration: const BoxDecoration(borderRadius: BorderRadius.all(AppRadius.lg), boxShadow: AppShadow.card),
      child: Material(
        color: context.warna.surfaceRaised,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(AppRadius.lg),
          side: BorderSide(color: context.warna.line),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.s3),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TriageTile(level: p.triage),
                const SizedBox(width: AppSpacing.s3),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Expanded(child: Text(p.nama, style: context.teks.title)),
                          const SizedBox(width: AppSpacing.s2),
                          Text(p.bed, style: context.teks.bodyStrong),
                        ],
                      ),
                      Text('${p.umur} · ${p.jk} · datang ${p.datang}', style: context.teks.caption),
                      const SizedBox(height: AppSpacing.s1),
                      Text(p.keluhan, style: context.teks.body),
                      const SizedBox(height: AppSpacing.s1),
                      Text(
                        p.status,
                        style: context.teks.small.copyWith(
                          color: _warnaStatus(p.statusTone, context.warna),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Kuning = menunggu / belum diisi, hijau = siap/selesai, lab = netral tebal.
  static Color _warnaStatus(StatusTone tone, AppColors c) => switch (tone) {
    StatusTone.warn || StatusTone.todo => c.amber,
    StatusTone.done => c.success,
    StatusTone.lab => c.ink,
  };
}
