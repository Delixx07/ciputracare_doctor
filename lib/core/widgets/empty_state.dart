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
            Icon(icon, size: AppSize.iconLg, color: context.warna.lineStrong),
            const SizedBox(height: AppSpacing.s3),
            Text(title, style: context.teks.section, textAlign: TextAlign.center),
            if (message != null) ...[
              const SizedBox(height: AppSpacing.s1),
              Text(message!, style: context.teks.caption, textAlign: TextAlign.center),
            ],
            if (onRetry != null) ...[
              const SizedBox(height: AppSpacing.s4),
              OutlinedButton(
                onPressed: onRetry,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(0, AppSpacing.minTouch),
                  foregroundColor: context.warna.brand,
                  side: BorderSide(color: context.warna.line),
                  textStyle: context.teks.bodyStrong,
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
