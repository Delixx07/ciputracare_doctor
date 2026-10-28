import 'package:flutter/material.dart';

import '../theme/app_spacing.dart';
import '../theme/app_text.dart';

/// Judul bagian: tebal 15, huruf biasa (bukan KAPITAL). [trailing] = keterangan kecil di kanan.
class SectionTitle extends StatelessWidget {
  const SectionTitle(this.title, {super.key, this.trailing});

  final String title;
  final String? trailing;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      header: true,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Expanded(flex: 3, child: Text(title, style: AppText.section)),
          if (trailing != null) ...[
            const SizedBox(width: AppSpacing.s2),
            // Keterangan panjang dibungkus, tidak meluber.
            Flexible(
              flex: 2,
              child: Text(trailing!, style: AppText.caption, textAlign: TextAlign.end),
            ),
          ],
        ],
      ),
    );
  }
}
