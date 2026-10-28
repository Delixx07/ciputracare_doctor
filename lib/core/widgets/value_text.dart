import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_text.dart';

/// Status nilai klinis (vital, lab). Normal = ink; abnormal = merah + panah.
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

  Color warna(AppColors c) => isAbnormal ? c.danger : c.ink;
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

  /// Default [context.teks.vital].
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final base = (style ?? context.teks.vital).copyWith(color: status.warna(context.warna));
    final arrow = showArrow ? status.arrow : null;
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: value, style: base),
          if (unit != null)
            TextSpan(
              text: ' $unit',
              style: context.teks.small.copyWith(color: status.warna(context.warna)),
            ),
          if (arrow != null) TextSpan(text: ' $arrow', style: base),
        ],
      ),
      semanticsLabel: [value, ?unit, ?status.label].join(' '),
    );
  }
}
