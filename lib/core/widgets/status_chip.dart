import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_text.dart';

/// Nada warna. Merah = kritis/alergi, kuning = perlu perhatian, hijau = selesai.
enum ChipTone {
  danger(AppColors.danger, AppColors.dangerSoft),
  warn(AppColors.amber, AppColors.amberSoft),
  success(AppColors.success, AppColors.successSoft),
  info(AppColors.brand, AppColors.brandSoft),
  neutral(AppColors.inkMuted, AppColors.surfaceSunken);

  const ChipTone(this.foreground, this.background);

  final Color foreground;
  final Color background;
}

/// Label status kecil, mis. "Triage 3", "Terverifikasi", "Kritis".
class StatusChip extends StatelessWidget {
  const StatusChip(this.label, {super.key, this.tone = ChipTone.neutral, this.icon, this.filled = false});

  final String label;
  final ChipTone tone;
  final IconData? icon;

  /// Latar penuh (mis. chip "Kritis"); default latar lembut.
  final bool filled;

  @override
  Widget build(BuildContext context) {
    final fg = filled ? AppColors.onDanger : tone.foreground;
    final bg = filled ? tone.foreground : tone.background;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s2, vertical: AppSpacing.s05),
      decoration: BoxDecoration(color: bg, borderRadius: const BorderRadius.all(AppRadius.sm)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[Icon(icon, size: AppSize.iconSm, color: fg), const SizedBox(width: AppSpacing.s1)],
          Flexible(
            child: Text(
              label,
              style: AppText.small.copyWith(color: fg, fontWeight: FontWeight.w600),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

/// Titik status kecil di depan baris daftar.
class StatusDot extends StatelessWidget {
  const StatusDot({super.key, this.tone = ChipTone.neutral});

  final ChipTone tone;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.dot,
      height: AppSize.dot,
      decoration: BoxDecoration(color: tone.foreground, shape: BoxShape.circle),
    );
  }
}
