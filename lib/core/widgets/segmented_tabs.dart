import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_text.dart';

/// Satu pilihan di [SegmentedTabs]; [count] tampil sebagai angka kecil.
typedef Segmen = ({String label, int? count});

/// Pilihan segmen berbentuk pil, mis. "Pasien saya 3 | Semua IGD 4" atau "Lab | Radiologi | Lainnya".
class SegmentedTabs extends StatelessWidget {
  const SegmentedTabs({super.key, required this.segmen, required this.selected, required this.onChanged});

  final List<Segmen> segmen;
  final int selected;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s1),
      decoration: const BoxDecoration(color: AppColors.brandSoft, borderRadius: BorderRadius.all(AppRadius.pill)),
      child: Row(
        children: [
          for (var i = 0; i < segmen.length; i++)
            Expanded(
              child: _Item(segmen: segmen[i], selected: i == selected, onTap: () => onChanged(i)),
            ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({required this.segmen, required this.selected, required this.onTap});

  final Segmen segmen;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final fg = selected ? AppColors.onBrand : AppColors.brand;
    final count = segmen.count;
    return Semantics(
      button: true,
      selected: selected,
      label: count == null ? segmen.label : '${segmen.label}, $count',
      excludeSemantics: true,
      child: Material(
        color: selected ? AppColors.brand : Colors.transparent,
        shape: const StadiumBorder(),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: AppSpacing.minTouch),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    segmen.label,
                    style: AppText.bodyStrong.copyWith(color: fg),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (count != null) ...[
                  const SizedBox(width: AppSpacing.s2),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s1 + AppSpacing.s05),
                    decoration: BoxDecoration(
                      color: selected ? AppColors.onBrand : AppColors.surfaceRaised,
                      borderRadius: const BorderRadius.all(AppRadius.pill),
                    ),
                    child: Text(
                      '$count',
                      style: AppText.small.copyWith(color: AppColors.brand, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
