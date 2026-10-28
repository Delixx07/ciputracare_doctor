import 'package:flutter/material.dart';

class AppSpacing {
  AppSpacing._();
  static const s05 = 2.0;
  static const s1 = 4.0;
  static const s2 = 8.0;
  static const s3 = 12.0;
  static const s4 = 16.0; // gutter layar & padding kartu
  static const s5 = 20.0;
  static const s6 = 24.0; // antar bagian
  static const s8 = 32.0;
  static const minTouch = 44.0;
}

/// Ukuran ikon & elemen kecil.
class AppSize {
  AppSize._();
  static const dot = 8.0; // titik status
  static const iconSm = 16.0; // ikon di chip
  static const icon = 24.0;
  static const iconLg = 40.0; // ikon EmptyState
  static const badge = 18.0; // badge jumlah notifikasi
  static const logo = 32.0; // logo di PageHeader
  static const accentLine = 3.0; // garis emas di bawah header
  static const stroke = 2.0; // garis fokus, garis grafik, tepi kartu penting
  static const strokeThin = 1.0; // garis bantu grafik
  static const strokeEmphasis = 1.5; // tepi kartu kritis
  static const chartDot = 5.0; // jari-jari titik grafik (diameter ≥ 8)
  static const button = 52.0; // tinggi tombol utama
  static const logoLogin = 140.0; // tinggi logo lengkap di layar masuk
  static const accentShort = 40.0; // garis emas pendek di bawah logo
  static const pinDot = 14.0;
  static const pinKeyWidth = 72.0;
  static const pinKeyHeight = 56.0;
  static const tabBar = 64.0; // tinggi tab bar bawah
  static const tabMarker = 24.0; // lebar garis emas tab aktif
  static const triageTile = 56.0; // lebar kotak level triage
}

class AppRadius {
  AppRadius._();
  static const sm = Radius.circular(6); // tag, badge
  static const md = Radius.circular(10); // input, tombol, tile vital
  static const lg = Radius.circular(16); // kartu
  static const pill = Radius.circular(999);
}

class AppShadow {
  AppShadow._();
  static const card = [
    BoxShadow(color: Color(0x0D0E2846), blurRadius: 2, offset: Offset(0, 1)),
    BoxShadow(color: Color(0x0D0E2846), blurRadius: 8, offset: Offset(0, 2)),
  ];
}
