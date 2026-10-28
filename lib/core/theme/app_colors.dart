import 'package:flutter/material.dart';

/// Warna dari design system "CiputraCare Doctor" (assets/design/tokens.json).
/// Aturan: warna hanya untuk hal penting. Nilai normal = [ink].
class AppColors {
  AppColors._();

  // Brand
  static const brand = Color(0xFF124383);
  static const brandStrong = Color(0xFF0E2846);
  static const brandBright = Color(0xFF0369B3);
  static const brandPastel = Color(0xFFCFE2F5);
  static const brandSoft = Color(0xFFEAF2FB);
  static const onBrand = Color(0xFFFFFFFF);
  static const onBrandMuted = Color(0xD9FFFFFF); // subjudul di header biru (on-brand 85%)
  static const brandDecor = Color(0x590369B3); // tanda plus dekoratif di header biru (brand-bright 35%)
  static const onBrandSubtle = Color(0xA6FFFFFF); // ikon/label tab tidak aktif di tab bar navy (on-brand 65%)

  // Aksen emas (dekoratif, garis bawah app bar, serah terima)
  static const gold = Color(0xFFC9A227);
  static const goldStrong = Color(0xFF7A5C0E);
  static const goldSoft = Color(0xFFFBF3DC);

  // Status
  static const danger = Color(0xFFC8102E); // kritis, alergi
  static const dangerStrong = Color(0xFF9E0B23);
  static const dangerSoft = Color(0xFFFDEEF0);
  static const onDanger = Color(0xFFFFFFFF);
  static const amber = Color(0xFF8A5300); // perlu perhatian, menunggu
  static const amberSoft = Color(0xFFFFF1DB);
  static const success = Color(0xFF17734A); // selesai
  static const successSoft = Color(0xFFE3F4EA);
  static const teal = Color(0xFF0E7065); // rawat jalan
  static const tealSoft = Color(0xFFE2F4F1);

  // Permukaan & teks
  static const surface = Color(0xFFFFFFFF);
  static const surfaceRaised = Color(0xFFFFFFFF);
  static const surfaceSunken = Color(0xFFEEF3F9);
  static const canvas = Color(0xFFF5F8FC); // latar halaman tab, di belakang kartu putih
  static const line = Color(0xFFDCE4EE);
  static const lineStrong = Color(0xFF7F8DA1);
  static const ink = Color(0xFF14213A);
  static const inkMuted = Color(0xFF536176);
}
