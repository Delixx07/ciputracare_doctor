import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/theme/app_colors.dart';
import '../core/theme/app_spacing.dart';
import '../core/theme/app_text.dart';

/// Kerangka dengan tab bar bawah: Beranda · IGD · Lab · Profil.
class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: AppTabBar(
        selectedIndex: navigationShell.currentIndex,
        // Ketuk tab yang sedang aktif = kembali ke awal tab itu.
        onSelected: (i) => navigationShell.goBranch(i, initialLocation: i == navigationShell.currentIndex),
      ),
    );
  }
}

/// Tab bar navy (senada header) dengan garis emas di atas tab aktif.
class AppTabBar extends StatelessWidget {
  const AppTabBar({super.key, required this.selectedIndex, required this.onSelected});

  final int selectedIndex;
  final ValueChanged<int> onSelected;

  static const _tabs = [
    (Icons.home_outlined, Icons.home, 'Beranda'),
    (Icons.monitor_heart_outlined, Icons.monitor_heart, 'IGD'),
    (Icons.show_chart, Icons.show_chart, 'Lab'),
    (Icons.person_outline, Icons.person, 'Profil'),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.brandStrong,
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: AppSize.tabBar,
          child: Row(
            children: [
              for (var i = 0; i < _tabs.length; i++)
                Expanded(
                  child: _TabItem(
                    icon: _tabs[i].$1,
                    selectedIcon: _tabs[i].$2,
                    label: _tabs[i].$3,
                    selected: i == selectedIndex,
                    onTap: () => onSelected(i),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  const _TabItem({
    required this.icon,
    required this.selectedIcon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final IconData icon;
  final IconData selectedIcon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final warna = selected ? AppColors.onBrand : AppColors.onBrandSubtle;
    return Semantics(
      button: true,
      selected: selected,
      label: 'Tab $label',
      excludeSemantics: true,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: selected ? AppSize.tabMarker : 0,
              height: AppSize.accentLine,
              decoration: const BoxDecoration(
                color: AppColors.gold,
                borderRadius: BorderRadius.vertical(bottom: AppRadius.sm),
              ),
            ),
            const Spacer(),
            Icon(selected ? selectedIcon : icon, color: warna, size: AppSize.icon),
            const SizedBox(height: AppSpacing.s1),
            Text(
              label,
              style: AppText.small.copyWith(color: warna, fontWeight: selected ? FontWeight.w700 : FontWeight.w500),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
