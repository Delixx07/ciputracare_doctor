import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';

/// Kartu putih bergaris tepi untuk isi baca (bukan daftar baris — untuk itu pakai `ListCard`).
class SurfaceCard extends StatelessWidget {
  const SurfaceCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(AppSpacing.s4),
    this.bayangan = false,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;

  /// Bayangan halus untuk kartu utama (mis. kartu CPPT, kartu dokter).
  final bool bayangan;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.surfaceRaised,
        borderRadius: const BorderRadius.all(AppRadius.lg),
        border: Border.all(color: AppColors.line),
        boxShadow: bayangan ? AppShadow.card : null,
      ),
      child: child,
    );
  }
}
