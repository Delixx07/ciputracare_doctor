import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_text.dart';

/// Strip kuning saat offline: data yang tampil adalah data terakhir.
class OfflineBanner extends StatelessWidget {
  const OfflineBanner({super.key, required this.diperbarui});

  final DateTime diperbarui;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      liveRegion: true,
      child: Container(
        width: double.infinity,
        color: context.warna.amberSoft,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4, vertical: AppSpacing.s2),
        child: Row(
          children: [
            Icon(Icons.cloud_off_outlined, size: AppSize.iconSm, color: context.warna.amber),
            const SizedBox(width: AppSpacing.s2),
            Expanded(
              child: Text(
                'Offline · data diperbarui ${DateFormat('HH:mm').format(diperbarui)}',
                style: context.teks.caption.copyWith(color: context.warna.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
