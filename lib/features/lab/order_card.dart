import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text.dart';
import '../../core/widgets/status_chip.dart';
import '../../data/models/lab.dart';
import 'lab_format.dart';

/// Kartu satu order lab: judul, status, No. transaksi, garis 4 tahap.
class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.order, this.onTap});

  final OrderLab order;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final o = order;
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Text(o.judul, style: context.teks.bodyStrong)),
                  const SizedBox(width: AppSpacing.s2),
                  Text(
                    o.status,
                    style: context.teks.caption.copyWith(
                      color: warnaStatusOrder(o, context.warna),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.s1),
              Row(
                children: [
                  Text(o.noTrx, style: context.teks.data.copyWith(color: context.warna.inkMuted)),
                  if (o.cito) ...[
                    const SizedBox(width: AppSpacing.s2),
                    const StatusChip('CITO', tone: ChipTone.danger),
                  ],
                ],
              ),
              const SizedBox(height: AppSpacing.s3),
              TahapBar(order: o),
              const SizedBox(height: AppSpacing.s2),
              Text(keteranganTahap(o), style: context.teks.small),
            ],
          ),
        ),
      ),
    );
  }
}

/// Garis 4 tahap: dipesan → sampel → diproses → selesai.
class TahapBar extends StatelessWidget {
  const TahapBar({super.key, required this.order});

  final OrderLab order;

  @override
  Widget build(BuildContext context) {
    final warna = order.selesai ? context.warna.success : context.warna.brand;
    return Semantics(
      label: 'Tahap ${order.tahap} dari ${OrderLab.jumlahTahap}',
      excludeSemantics: true,
      child: Row(
        children: [
          for (var i = 0; i < OrderLab.jumlahTahap; i++) ...[
            if (i > 0) const SizedBox(width: AppSpacing.s05),
            Expanded(
              child: Container(
                height: AppSpacing.s1,
                decoration: BoxDecoration(
                  color: i < order.tahap ? warna : context.warna.line,
                  borderRadius: const BorderRadius.all(AppRadius.pill),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
