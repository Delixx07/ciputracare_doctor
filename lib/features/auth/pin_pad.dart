import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text.dart';

/// Titik-titik jumlah digit PIN yang sudah diketik.
class PinDots extends StatelessWidget {
  const PinDots({super.key, required this.panjang, required this.terisi, this.galat = false});

  final int panjang;
  final int terisi;
  final bool galat;

  @override
  Widget build(BuildContext context) {
    final warna = galat ? context.warna.danger : context.warna.brand;
    return Semantics(
      label: '$terisi dari $panjang digit',
      excludeSemantics: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < panjang; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s2),
              child: Container(
                width: AppSize.pinDot,
                height: AppSize.pinDot,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: i < terisi ? warna : null,
                  border: Border.all(
                    color: i < terisi ? warna : (galat ? context.warna.danger : context.warna.lineStrong),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// Papan angka 0–9 + hapus.
class PinKeypad extends StatelessWidget {
  const PinKeypad({super.key, required this.onDigit, required this.onHapus, this.enabled = true});

  final ValueChanged<String> onDigit;
  final VoidCallback onHapus;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    Widget baris(List<Widget> tombol) => Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.s2),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: tombol),
    );
    Widget digit(String d) => _Tombol(label: d, onTap: enabled ? () => onDigit(d) : null);

    return Column(
      children: [
        baris([digit('1'), digit('2'), digit('3')]),
        baris([digit('4'), digit('5'), digit('6')]),
        baris([digit('7'), digit('8'), digit('9')]),
        baris([
          const SizedBox(width: AppSize.pinKeyWidth, height: AppSize.pinKeyHeight),
          digit('0'),
          SizedBox(
            width: AppSize.pinKeyWidth,
            height: AppSize.pinKeyHeight,
            child: IconButton(
              tooltip: 'Hapus',
              onPressed: enabled ? onHapus : null,
              icon: Icon(Icons.backspace_outlined, color: context.warna.ink),
            ),
          ),
        ]),
      ],
    );
  }
}

class _Tombol extends StatelessWidget {
  const _Tombol({required this.label, required this.onTap});

  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.warna.brandSoft,
      shape: const StadiumBorder(),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: AppSize.pinKeyWidth,
          height: AppSize.pinKeyHeight,
          child: Center(
            child: Text(label, style: context.teks.titleLg.copyWith(fontWeight: FontWeight.w600)),
          ),
        ),
      ),
    );
  }
}
