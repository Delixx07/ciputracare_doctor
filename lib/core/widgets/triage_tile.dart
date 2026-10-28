import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_text.dart';
import 'status_chip.dart';

/// Warna triage ATS 1–5: 1 merah (kritis), 2–3 kuning (perlu perhatian), 4–5 hijau.
ChipTone triageTone(int level) => switch (level) {
  <= 1 => ChipTone.danger,
  2 || 3 => ChipTone.warn,
  _ => ChipTone.success,
};

/// Kotak level triage di kiri kartu pasien.
class TriageTile extends StatelessWidget {
  const TriageTile({super.key, required this.level});

  final int level;

  @override
  Widget build(BuildContext context) {
    final tone = triageTone(level);
    return Semantics(
      label: 'Triage level $level',
      excludeSemantics: true,
      child: Container(
        width: AppSize.triageTile,
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.s2),
        decoration: BoxDecoration(
          color: tone.background(context.warna),
          borderRadius: const BorderRadius.all(AppRadius.md),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Level',
              style: context.teks.small.copyWith(color: tone.foreground(context.warna), fontWeight: FontWeight.w600),
            ),
            Text('$level', style: context.teks.display.copyWith(color: tone.foreground(context.warna))),
          ],
        ),
      ),
    );
  }
}
