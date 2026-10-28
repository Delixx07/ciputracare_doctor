import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_text.dart';

/// Kartu putih berisi baris-baris yang dipisah garis tipis.
class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.warna.surfaceRaised,
        borderRadius: const BorderRadius.all(AppRadius.lg),
        border: Border.all(color: context.warna.line),
        boxShadow: AppShadow.card,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(AppRadius.lg),
        child: Material(
          type: MaterialType.transparency,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (var i = 0; i < children.length; i++) ...[if (i > 0) const Divider(), children[i]],
            ],
          ),
        ),
      ),
    );
  }
}

/// Baris di [ListCard]. Bila [onTap] ada, tampil chevron ›.
class ListCardItem extends StatelessWidget {
  const ListCardItem({
    super.key,
    required this.title,
    this.subtitle,
    this.subtitleColor,
    this.leading,
    this.trailing,
    this.onTap,
  });

  final String title;
  final String? subtitle;

  /// Mis. warna kuning untuk "belum lengkap". Default abu.
  final Color? subtitleColor;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: AppSpacing.minTouch),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4, vertical: AppSpacing.s3),
          child: Row(
            children: [
              if (leading != null) ...[leading!, const SizedBox(width: AppSpacing.s3)],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: context.teks.bodyStrong),
                    if (subtitle != null)
                      Text(
                        subtitle!,
                        style: subtitleColor == null
                            ? context.teks.caption
                            : context.teks.caption.copyWith(color: subtitleColor),
                      ),
                  ],
                ),
              ),
              if (trailing != null) ...[const SizedBox(width: AppSpacing.s2), trailing!],
              if (onTap != null) ...[
                const SizedBox(width: AppSpacing.s2),
                Icon(Icons.chevron_right, color: context.warna.ink, size: AppSize.icon),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
