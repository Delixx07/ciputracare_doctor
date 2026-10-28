// GENERATED-BY-HAND-TABLE: token dari assets/design/tokens.json + palet gelap. Ubah nilai di sini saja.
import 'package:flutter/material.dart';

/// Warna design system "CiputraCare Doctor" untuk mode terang & gelap.
/// Di widget: `context.warna.ink`. Aturan: warna hanya untuk hal penting; nilai normal = [ink].
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.brand,
    required this.brandStrong,
    required this.brandBright,
    required this.brandPastel,
    required this.brandSoft,
    required this.onBrand,
    required this.chrome,
    required this.chromeStrong,
    required this.onChrome,
    required this.onBrandMuted,
    required this.brandDecor,
    required this.onBrandSubtle,
    required this.gold,
    required this.goldStrong,
    required this.goldSoft,
    required this.danger,
    required this.dangerStrong,
    required this.dangerSoft,
    required this.dangerFill,
    required this.onDanger,
    required this.amber,
    required this.amberSoft,
    required this.success,
    required this.successSoft,
    required this.teal,
    required this.tealSoft,
    required this.surface,
    required this.surfaceRaised,
    required this.surfaceSunken,
    required this.canvas,
    required this.line,
    required this.lineStrong,
    required this.ink,
    required this.inkMuted,
    required this.logoBackdrop,
  });

  static const terang = AppColors(
    brand: Color(0xFF124383),
    brandStrong: Color(0xFF0E2846),
    brandBright: Color(0xFF0369B3),
    brandPastel: Color(0xFFCFE2F5),
    brandSoft: Color(0xFFEAF2FB),
    onBrand: Color(0xFFFFFFFF),
    chrome: Color(0xFF124383),
    chromeStrong: Color(0xFF0E2846),
    onChrome: Color(0xFFFFFFFF),
    onBrandMuted: Color(0xD9FFFFFF),
    brandDecor: Color(0x590369B3),
    onBrandSubtle: Color(0xA6FFFFFF),
    gold: Color(0xFFC9A227),
    goldStrong: Color(0xFF7A5C0E),
    goldSoft: Color(0xFFFBF3DC),
    danger: Color(0xFFC8102E),
    dangerStrong: Color(0xFF9E0B23),
    dangerSoft: Color(0xFFFDEEF0),
    dangerFill: Color(0xFFC8102E),
    onDanger: Color(0xFFFFFFFF),
    amber: Color(0xFF8A5300),
    amberSoft: Color(0xFFFFF1DB),
    success: Color(0xFF17734A),
    successSoft: Color(0xFFE3F4EA),
    teal: Color(0xFF0E7065),
    tealSoft: Color(0xFFE2F4F1),
    surface: Color(0xFFFFFFFF),
    surfaceRaised: Color(0xFFFFFFFF),
    surfaceSunken: Color(0xFFEEF3F9),
    canvas: Color(0xFFF5F8FC),
    line: Color(0xFFDCE4EE),
    lineStrong: Color(0xFF7F8DA1),
    ink: Color(0xFF14213A),
    inkMuted: Color(0xFF536176),
    logoBackdrop: Color(0x00FFFFFF),
  );

  static const gelap = AppColors(
    brand: Color(0xFF7FB2F0),
    brandStrong: Color(0xFFCFE2F5),
    brandBright: Color(0xFF4FA3E8),
    brandPastel: Color(0xFF23446B),
    brandSoft: Color(0xFF16304F),
    onBrand: Color(0xFF0B1B30),
    chrome: Color(0xFF13325A),
    chromeStrong: Color(0xFF0A1A30),
    onChrome: Color(0xFFFFFFFF),
    onBrandMuted: Color(0xD9FFFFFF),
    brandDecor: Color(0x594FA3E8),
    onBrandSubtle: Color(0xA6FFFFFF),
    gold: Color(0xFFD4B24C),
    goldStrong: Color(0xFFE2C470),
    goldSoft: Color(0xFF3A3018),
    danger: Color(0xFFFF7A8A),
    dangerStrong: Color(0xFFFFB3BD),
    dangerSoft: Color(0xFF3D1A20),
    dangerFill: Color(0xFFC4314B),
    onDanger: Color(0xFFFFFFFF),
    amber: Color(0xFFF2B65A),
    amberSoft: Color(0xFF3A2A12),
    success: Color(0xFF5FD39A),
    successSoft: Color(0xFF143326),
    teal: Color(0xFF5CCFC0),
    tealSoft: Color(0xFF12312D),
    surface: Color(0xFF0F1622),
    surfaceRaised: Color(0xFF18212F),
    surfaceSunken: Color(0xFF222D3D),
    canvas: Color(0xFF0B111B),
    line: Color(0xFF2A3647),
    lineStrong: Color(0xFF6E7C91),
    ink: Color(0xFFE6ECF5),
    inkMuted: Color(0xFF9AA7B9),
    logoBackdrop: Color(0xFFFFFFFF),
  );

  // Brand (elemen interaktif: tombol utama, segmen terpilih, tautan)
  final Color brand;

  /// teks kuat di atas brandSoft, tooltip grafik
  final Color brandStrong;
  final Color brandBright;

  /// garis tepi di atas brandSoft
  final Color brandPastel;

  /// latar segmen, baris belum dibaca, avatar
  final Color brandSoft;

  /// teks/ikon di atas fill brand
  final Color onBrand;

  // Chrome: header biru & tab bar — tetap gelap di kedua mode
  /// latar PageHeader
  final Color chrome;

  /// latar tab bar bawah
  final Color chromeStrong;
  final Color onChrome;

  /// subjudul di header (on-chrome 85%)
  final Color onBrandMuted;

  /// tanda plus dekoratif di header
  final Color brandDecor;

  /// ikon/label tab tidak aktif (on-chrome 65%)
  final Color onBrandSubtle;

  // Aksen emas (dekoratif, serah terima)
  final Color gold;

  /// teks di atas goldSoft
  final Color goldStrong;
  final Color goldSoft;

  // Status: merah = kritis/alergi, kuning = perlu perhatian, hijau = selesai
  final Color danger;

  /// teks di atas dangerSoft
  final Color dangerStrong;
  final Color dangerSoft;

  /// isian penuh merah: banner kritis, chip Kritis, badge
  final Color dangerFill;

  /// teks di atas dangerFill
  final Color onDanger;
  final Color amber;
  final Color amberSoft;
  final Color success;
  final Color successSoft;

  /// rawat jalan
  final Color teal;
  final Color tealSoft;

  // Permukaan & teks
  /// latar layar biasa (login, PIN)
  final Color surface;

  /// kartu, app bar
  final Color surfaceRaised;

  /// kotak abu (vital, kode ICD)
  final Color surfaceSunken;

  /// latar halaman di belakang kartu
  final Color canvas;
  final Color line;
  final Color lineStrong;

  /// teks utama & nilai normal
  final Color ink;

  /// teks sekunder
  final Color inkMuted;

  /// alas logo berwarna navy di mode gelap
  final Color logoBackdrop;

  @override
  AppColors copyWith({
    Color? brand,
    Color? brandStrong,
    Color? brandBright,
    Color? brandPastel,
    Color? brandSoft,
    Color? onBrand,
    Color? chrome,
    Color? chromeStrong,
    Color? onChrome,
    Color? onBrandMuted,
    Color? brandDecor,
    Color? onBrandSubtle,
    Color? gold,
    Color? goldStrong,
    Color? goldSoft,
    Color? danger,
    Color? dangerStrong,
    Color? dangerSoft,
    Color? dangerFill,
    Color? onDanger,
    Color? amber,
    Color? amberSoft,
    Color? success,
    Color? successSoft,
    Color? teal,
    Color? tealSoft,
    Color? surface,
    Color? surfaceRaised,
    Color? surfaceSunken,
    Color? canvas,
    Color? line,
    Color? lineStrong,
    Color? ink,
    Color? inkMuted,
    Color? logoBackdrop,
  }) => AppColors(
    brand: brand ?? this.brand,
    brandStrong: brandStrong ?? this.brandStrong,
    brandBright: brandBright ?? this.brandBright,
    brandPastel: brandPastel ?? this.brandPastel,
    brandSoft: brandSoft ?? this.brandSoft,
    onBrand: onBrand ?? this.onBrand,
    chrome: chrome ?? this.chrome,
    chromeStrong: chromeStrong ?? this.chromeStrong,
    onChrome: onChrome ?? this.onChrome,
    onBrandMuted: onBrandMuted ?? this.onBrandMuted,
    brandDecor: brandDecor ?? this.brandDecor,
    onBrandSubtle: onBrandSubtle ?? this.onBrandSubtle,
    gold: gold ?? this.gold,
    goldStrong: goldStrong ?? this.goldStrong,
    goldSoft: goldSoft ?? this.goldSoft,
    danger: danger ?? this.danger,
    dangerStrong: dangerStrong ?? this.dangerStrong,
    dangerSoft: dangerSoft ?? this.dangerSoft,
    dangerFill: dangerFill ?? this.dangerFill,
    onDanger: onDanger ?? this.onDanger,
    amber: amber ?? this.amber,
    amberSoft: amberSoft ?? this.amberSoft,
    success: success ?? this.success,
    successSoft: successSoft ?? this.successSoft,
    teal: teal ?? this.teal,
    tealSoft: tealSoft ?? this.tealSoft,
    surface: surface ?? this.surface,
    surfaceRaised: surfaceRaised ?? this.surfaceRaised,
    surfaceSunken: surfaceSunken ?? this.surfaceSunken,
    canvas: canvas ?? this.canvas,
    line: line ?? this.line,
    lineStrong: lineStrong ?? this.lineStrong,
    ink: ink ?? this.ink,
    inkMuted: inkMuted ?? this.inkMuted,
    logoBackdrop: logoBackdrop ?? this.logoBackdrop,
  );

  @override
  AppColors lerp(AppColors? other, double t) {
    if (other == null) return this;
    return AppColors(
      brand: Color.lerp(brand, other.brand, t)!,
      brandStrong: Color.lerp(brandStrong, other.brandStrong, t)!,
      brandBright: Color.lerp(brandBright, other.brandBright, t)!,
      brandPastel: Color.lerp(brandPastel, other.brandPastel, t)!,
      brandSoft: Color.lerp(brandSoft, other.brandSoft, t)!,
      onBrand: Color.lerp(onBrand, other.onBrand, t)!,
      chrome: Color.lerp(chrome, other.chrome, t)!,
      chromeStrong: Color.lerp(chromeStrong, other.chromeStrong, t)!,
      onChrome: Color.lerp(onChrome, other.onChrome, t)!,
      onBrandMuted: Color.lerp(onBrandMuted, other.onBrandMuted, t)!,
      brandDecor: Color.lerp(brandDecor, other.brandDecor, t)!,
      onBrandSubtle: Color.lerp(onBrandSubtle, other.onBrandSubtle, t)!,
      gold: Color.lerp(gold, other.gold, t)!,
      goldStrong: Color.lerp(goldStrong, other.goldStrong, t)!,
      goldSoft: Color.lerp(goldSoft, other.goldSoft, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
      dangerStrong: Color.lerp(dangerStrong, other.dangerStrong, t)!,
      dangerSoft: Color.lerp(dangerSoft, other.dangerSoft, t)!,
      dangerFill: Color.lerp(dangerFill, other.dangerFill, t)!,
      onDanger: Color.lerp(onDanger, other.onDanger, t)!,
      amber: Color.lerp(amber, other.amber, t)!,
      amberSoft: Color.lerp(amberSoft, other.amberSoft, t)!,
      success: Color.lerp(success, other.success, t)!,
      successSoft: Color.lerp(successSoft, other.successSoft, t)!,
      teal: Color.lerp(teal, other.teal, t)!,
      tealSoft: Color.lerp(tealSoft, other.tealSoft, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceRaised: Color.lerp(surfaceRaised, other.surfaceRaised, t)!,
      surfaceSunken: Color.lerp(surfaceSunken, other.surfaceSunken, t)!,
      canvas: Color.lerp(canvas, other.canvas, t)!,
      line: Color.lerp(line, other.line, t)!,
      lineStrong: Color.lerp(lineStrong, other.lineStrong, t)!,
      ink: Color.lerp(ink, other.ink, t)!,
      inkMuted: Color.lerp(inkMuted, other.inkMuted, t)!,
      logoBackdrop: Color.lerp(logoBackdrop, other.logoBackdrop, t)!,
    );
  }
}

extension AppColorsContext on BuildContext {
  /// Palet aktif (terang/gelap) dari tema.
  AppColors get warna => Theme.of(this).extension<AppColors>() ?? AppColors.terang;
}
