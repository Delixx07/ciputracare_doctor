import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// Skala huruf. Jangan pakai ukuran lain. Label bagian = [section] (huruf biasa, bukan KAPITAL).
class AppText {
  AppText._();

  static TextStyle _sans(double size, double height, FontWeight w, {Color color = AppColors.ink, double ls = 0}) =>
      GoogleFonts.plusJakartaSans(
        fontSize: size,
        height: height / size,
        fontWeight: w,
        color: color,
        letterSpacing: ls,
      );

  static final display = _sans(28, 34, FontWeight.w700, ls: -0.56); // sapaan beranda
  static final titleLg = _sans(22, 28, FontWeight.w700, ls: -0.22); // judul halaman di header biru
  static final title = _sans(17, 24, FontWeight.w700); // nama pasien, judul app bar
  static final section = _sans(15, 20, FontWeight.w700); // judul bagian
  static final body = _sans(15, 22, FontWeight.w400);
  static final bodyStrong = _sans(15, 22, FontWeight.w600);
  static final caption = _sans(13, 18, FontWeight.w500, color: AppColors.inkMuted);
  static final small = _sans(12, 16, FontWeight.w500, color: AppColors.inkMuted); // minimum
  static final vital = _sans(16, 22, FontWeight.w700);

  /// No. RM, No. registrasi, kode ICD.
  static final data = GoogleFonts.ibmPlexMono(
    fontSize: 13,
    height: 18 / 13,
    fontWeight: FontWeight.w500,
    color: AppColors.ink,
  );
}
