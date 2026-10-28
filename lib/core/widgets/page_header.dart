import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_text.dart';

/// Header biru halaman utama (Beranda, IGD, Lab, Profil): logo + label, judul besar, subjudul,
/// lonceng notifikasi di kanan atas, garis emas di bawah.
class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.label = 'CiputraCare Doctor',
    this.badgeCount = 0,
    this.onNotifikasi,
  });

  final String title;
  final String? subtitle;

  /// Label kecil di samping logo, mis. "Emergency Unit".
  final String label;

  /// Jumlah notifikasi belum dibaca; 0 = tanpa badge.
  final int badgeCount;

  /// Lonceng hanya tampil bila diisi.
  final VoidCallback? onNotifikasi;

  @override
  Widget build(BuildContext context) {
    // Header selalu gelap → ikon status bar putih di kedua mode.
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Container(
        decoration: BoxDecoration(
          color: context.warna.chrome,
          border: Border(
            bottom: BorderSide(color: context.warna.gold, width: AppSize.accentLine),
          ),
        ),
        child: Stack(
          children: [
            const Positioned(right: -AppSpacing.s4, bottom: -AppSpacing.s6, child: _PlusDecor()),
            SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s3, AppSpacing.s4, AppSpacing.s4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(AppRadius.md),
                          child: Image.asset(
                            'assets/images/logo_icon.png',
                            width: AppSize.logo,
                            height: AppSize.logo,
                            excludeFromSemantics: true,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.s2),
                        Expanded(
                          child: Text(
                            label,
                            style: context.teks.caption.copyWith(
                              color: context.warna.onChrome,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        if (onNotifikasi != null) _BellButton(count: badgeCount, onPressed: onNotifikasi!),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.s3),
                    Semantics(
                      header: true,
                      child: Text(title, style: context.teks.titleLg.copyWith(color: context.warna.onChrome)),
                    ),
                    if (subtitle != null)
                      Text(subtitle!, style: context.teks.caption.copyWith(color: context.warna.onBrandMuted)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BellButton extends StatelessWidget {
  const _BellButton({required this.count, required this.onPressed});

  final int count;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final label = count > 0 ? 'Notifikasi, $count belum dibaca' : 'Notifikasi';
    return Semantics(
      button: true,
      label: label,
      excludeSemantics: true,
      child: SizedBox.square(
        dimension: AppSpacing.minTouch,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: IconButton(
                onPressed: onPressed,
                tooltip: label,
                style: IconButton.styleFrom(backgroundColor: context.warna.brandDecor),
                icon: Icon(Icons.notifications_none, color: context.warna.onChrome, size: AppSize.icon),
              ),
            ),
            if (count > 0)
              Positioned(
                top: -AppSpacing.s1,
                right: -AppSpacing.s1,
                child: IgnorePointer(
                  child: Container(
                    constraints: const BoxConstraints(minWidth: AppSize.badge, minHeight: AppSize.badge),
                    padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s1),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: context.warna.dangerFill,
                      borderRadius: BorderRadius.all(AppRadius.pill),
                    ),
                    child: Text(
                      count > 9 ? '9+' : '$count',
                      style: context.teks.small.copyWith(color: context.warna.onDanger, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// Tanda plus besar samar (dari logo) di pojok kanan bawah header.
class _PlusDecor extends StatelessWidget {
  const _PlusDecor();

  static const _arm = AppSpacing.s8 * 3; // panjang lengan
  static const _width = AppSpacing.s6; // tebal lengan

  @override
  Widget build(BuildContext context) {
    return ExcludeSemantics(
      child: SizedBox.square(
        dimension: _arm,
        child: Stack(
          alignment: Alignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(color: context.warna.brandDecor, borderRadius: BorderRadius.all(AppRadius.sm)),
              child: SizedBox(width: _width, height: _arm),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: context.warna.brandDecor, borderRadius: BorderRadius.all(AppRadius.sm)),
              child: SizedBox(width: _arm, height: _width),
            ),
          ],
        ),
      ),
    );
  }
}
