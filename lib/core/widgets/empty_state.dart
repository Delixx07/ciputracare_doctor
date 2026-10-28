import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_text.dart';

/// Keadaan kosong / galat. [onRetry] hanya memuat ulang data (bukan aksi tulis).
class EmptyState extends StatelessWidget {
  const EmptyState({super.key, required this.title, this.message, this.icon = Icons.inbox_outlined, this.onRetry});

  final String title;
  final String? message;
  final IconData icon;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.s6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: AppSize.iconLg, color: AppColors.lineStrong),
            const SizedBox(height: AppSpacing.s3),
            Text(title, style: AppText.section, textAlign: TextAlign.center),
            if (message != null) ...[
              const SizedBox(height: AppSpacing.s1),
              Text(message!, style: AppText.caption, textAlign: TextAlign.center),
            ],
            if (onRetry != null) ...[
              const SizedBox(height: AppSpacing.s4),
              OutlinedButton(
                onPressed: onRetry,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(0, AppSpacing.minTouch),
                  foregroundColor: AppColors.brand,
                  side: const BorderSide(color: AppColors.line),
                  textStyle: AppText.bodyStrong,
                ),
                child: const Text('Coba lagi'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
