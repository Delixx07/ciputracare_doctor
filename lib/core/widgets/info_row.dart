import 'package:flutter/material.dart';

import '../theme/app_spacing.dart';
import '../theme/app_text.dart';

/// Tampilan baca satu isian: label kecil di atas, isi di bawah.
/// [data] = pakai huruf mono (No. RM, No. registrasi, kode ICD).
class InfoRow extends StatelessWidget {
  const InfoRow({super.key, required this.label, required this.value, this.data = false});

  final String label;
  final String value;
  final bool data;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: AppText.small),
          const SizedBox(height: AppSpacing.s1),
          Text(value.isEmpty ? '–' : value, style: data ? AppText.data : AppText.body),
        ],
      ),
    );
  }
}
