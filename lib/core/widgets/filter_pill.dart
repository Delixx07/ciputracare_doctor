import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_text.dart';

/// Chip filter berbentuk pil, mis. "Semua PPA · 2", "Lab", "GDS". Tinggi sentuh ≥ 44.
class FilterPill extends StatelessWidget {
  const FilterPill({super.key, required this.label, this.count, required this.selected, required this.onTap});

  final String label;

  /// Ditampilkan sebagai "Label · n" bila diisi.
  final int? count;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(count == null ? label : '$label · $count'),
      selected: selected,
      onSelected: (_) => onTap(),
      showCheckmark: false,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      labelStyle: context.teks.caption.copyWith(
        color: selected ? context.warna.brand : context.warna.ink,
        fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
      ),
      side: BorderSide(color: selected ? context.warna.brand : context.warna.line),
    );
  }
}
