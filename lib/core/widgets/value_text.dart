import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_text.dart';

/// Status nilai klinis (vital, lab). Normal = [AppColors.ink]; abnormal = merah + panah.
enum ValueStatus {
  normal(null, null),
  tinggi('▲', 'Tinggi'),
  rendah('▼', 'Rendah'),

  /// Arah tidak diketahui dari sumber; ditandai chip "Kritis", bukan panah.
  kritis(null, 'Kritis'),

  /// Ditandai abnormal tapi arahnya tidak diketahui: merah tanpa panah (jangan menebak ▲/▼).
  abnormal(null, 'Di luar normal');

  const ValueStatus(this.arrow, this.label);

  final String? arrow;
  final String? label;

  bool get isAbnormal => this != normal;

  Color get color => isAbnormal ? AppColors.danger : AppColors.ink;
}

/// Nilai + satuan. Abnormal: berwarna dan diberi panah ▲/▼ (bukan hanya warna).
class ValueText extends StatelessWidget {
  const ValueText(
    this.value, {
    super.key,
    this.unit,
    this.status = ValueStatus.normal,
    this.showArrow = true,
    this.style,
  });

  final String value;
  final String? unit;
  final ValueStatus status;

  /// Matikan bila label status ditampilkan terpisah (mis. di [LabValueRow]).
  final bool showArrow;

  /// Default [AppText.vital].
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final base = (style ?? AppText.vital).copyWith(color: status.color);
    final arrow = showArrow ? status.arrow : null;
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: value, style: base),
          if (unit != null)
            TextSpan(
              text: ' $unit',
              style: AppText.small.copyWith(color: status.color),
            ),
          if (arrow != null) TextSpan(text: ' $arrow', style: base),
        ],
      ),
      semanticsLabel: [value, ?unit, ?status.label].join(' '),
    );
  }
}
