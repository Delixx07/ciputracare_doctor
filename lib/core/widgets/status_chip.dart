import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_text.dart';

/// Nada warna. Merah = kritis/alergi, kuning = perlu perhatian, hijau = selesai.
enum ChipTone {
  danger,
  warn,
  success,
  info,
  neutral;

  Color foreground(AppColors c) => switch (this) {
    danger => c.danger,
    warn => c.amber,
    success => c.success,
    info => c.brand,
    neutral => c.inkMuted,
  };

  Color background(AppColors c) => switch (this) {
    danger => c.dangerSoft,
    warn => c.amberSoft,
    success => c.successSoft,
    info => c.brandSoft,
    neutral => c.surfaceSunken,
  };
}

/// Label status kecil, mis. "Triage 3", "Terverifikasi", "Kritis".
class StatusChip extends StatelessWidget {
  const StatusChip(this.label, {super.key, this.tone = ChipTone.neutral, this.icon, this.filled = false});

  final String label;
  final ChipTone tone;
  final IconData? icon;

  /// Latar merah penuh (chip "Kritis"); default latar lembut.
  final bool filled;

  @override
  Widget build(BuildContext context) {
    final fg = filled ? context.warna.onDanger : tone.foreground(context.warna);
    final bg = filled ? context.warna.dangerFill : tone.background(context.warna);
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
              style: context.teks.small.copyWith(color: fg, fontWeight: FontWeight.w600),
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
      decoration: BoxDecoration(color: tone.foreground(context.warna), shape: BoxShape.circle),
    );
  }
}
