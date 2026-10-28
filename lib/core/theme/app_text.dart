import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// Skala huruf. Jangan pakai ukuran lain. Label bagian = [section] (huruf biasa, bukan KAPITAL).
/// Di widget: `context.teks.caption` (warna mengikuti mode terang/gelap).
class AppText {
  AppText._(AppColors c)
    : display = _sans(28, 34, FontWeight.w700, c.ink, ls: -0.56),
      titleLg = _sans(22, 28, FontWeight.w700, c.ink, ls: -0.22),
      title = _sans(17, 24, FontWeight.w700, c.ink),
      section = _sans(15, 20, FontWeight.w700, c.ink),
      body = _sans(15, 22, FontWeight.w400, c.ink),
      bodyStrong = _sans(15, 22, FontWeight.w600, c.ink),
      caption = _sans(13, 18, FontWeight.w500, c.inkMuted),
      small = _sans(12, 16, FontWeight.w500, c.inkMuted),
      vital = _sans(16, 22, FontWeight.w700, c.ink),
      data = GoogleFonts.ibmPlexMono(fontSize: 13, height: 18 / 13, fontWeight: FontWeight.w500, color: c.ink);

  static final terang = AppText._(AppColors.terang);
  static final gelap = AppText._(AppColors.gelap);

  static AppText dari(AppColors c) =>
      identical(c, AppColors.gelap) ? gelap : (identical(c, AppColors.terang) ? terang : AppText._(c));

  static TextStyle _sans(double size, double height, FontWeight w, Color color, {double ls = 0}) =>
      GoogleFonts.plusJakartaSans(
        fontSize: size,
        height: height / size,
        fontWeight: w,
        color: color,
        letterSpacing: ls,
      );

  /// Sapaan beranda.
  final TextStyle display;

  /// Judul halaman di header biru.
  final TextStyle titleLg;

  /// Nama pasien, judul app bar.
  final TextStyle title;

  /// Judul bagian.
  final TextStyle section;
  final TextStyle body;
  final TextStyle bodyStrong;
  final TextStyle caption;

  /// Ukuran minimum.
  final TextStyle small;
  final TextStyle vital;

  /// No. RM, No. registrasi, kode ICD.
  final TextStyle data;
}

extension AppTextContext on BuildContext {
  /// Skala huruf dengan warna mode aktif.
  AppText get teks => AppText.dari(warna);
}
