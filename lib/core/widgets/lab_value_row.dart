import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_text.dart';
import 'status_chip.dart';
import 'value_text.dart';

/// Satu baris hasil lab: nama + rujukan/sebelumnya di kiri, nilai + status di kanan.
/// Baris kritis diberi latar merah muda.
class LabValueRow extends StatelessWidget {
  const LabValueRow({
    super.key,
    required this.item,
    required this.value,
    required this.unit,
    required this.rujukan,
    this.sebelumnya,
    this.status = ValueStatus.normal,
    this.onTap,
  });

  final String item;
  final String value;
  final String unit;
  final String rujukan;
  final String? sebelumnya;
  final ValueStatus status;

  /// Mis. buka tren parameter.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final kritis = status == ValueStatus.kritis;
    return Material(
      color: kritis ? context.warna.dangerSoft : Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: AppSpacing.minTouch),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4, vertical: AppSpacing.s3),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item, style: context.teks.bodyStrong),
                      const SizedBox(height: AppSpacing.s05),
                      Text('Rujukan $rujukan · sebelumnya ${sebelumnya ?? '–'}', style: context.teks.small),
                    ],
                  ),
                ),
                const SizedBox(width: AppSpacing.s3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ValueText(value, unit: unit, status: status, showArrow: false),
                    if (kritis)
                      const StatusChip('Kritis', tone: ChipTone.danger, icon: Icons.warning_amber_rounded, filled: true)
                    else if (status.isAbnormal)
                      Text(
                        [?status.arrow, ?status.label].join(' '),
                        style: context.teks.small.copyWith(
                          color: status.warna(context.warna),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
