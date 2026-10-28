import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_text.dart';

/// Kode ICD-10 / ICD-9-CM dalam huruf mono di kotak abu.
class CodeBadge extends StatelessWidget {
  const CodeBadge(this.kode, {super.key});

  final String kode;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s2, vertical: AppSpacing.s05),
      decoration: BoxDecoration(color: context.warna.surfaceSunken, borderRadius: BorderRadius.all(AppRadius.sm)),
      child: Text(kode, style: context.teks.data),
    );
  }
}
