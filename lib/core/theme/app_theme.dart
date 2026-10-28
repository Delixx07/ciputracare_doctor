import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'app_spacing.dart';
import 'app_text.dart';

/// Tema aplikasi. [gelap] memilih palet [AppColors.gelap]; arti warna sama di kedua mode.
ThemeData buildAppTheme({bool gelap = false}) {
  final c = gelap ? AppColors.gelap : AppColors.terang;
  final t = AppText.dari(c);
  final brightness = gelap ? Brightness.dark : Brightness.light;
  final base = ThemeData(useMaterial3: true, brightness: brightness);

  return base.copyWith(
    extensions: [c],
    scaffoldBackgroundColor: c.surface,
    colorScheme: ColorScheme.fromSeed(seedColor: c.brand, brightness: brightness).copyWith(
      primary: c.brand,
      onPrimary: c.onBrand,
      secondary: c.brandBright,
      error: c.danger,
      onError: c.onDanger,
      surface: c.surface,
      onSurface: c.ink,
      onSurfaceVariant: c.inkMuted,
      outline: c.line,
      surfaceContainerHighest: c.surfaceSunken,
    ),
    textTheme: GoogleFonts.plusJakartaSansTextTheme(base.textTheme).apply(bodyColor: c.ink, displayColor: c.ink),
    iconTheme: IconThemeData(color: c.ink),
    appBarTheme: AppBarTheme(
      backgroundColor: c.surfaceRaised,
      foregroundColor: c.ink,
      elevation: 0,
      scrolledUnderElevation: 0,
      titleTextStyle: t.title,
      // Ikon status bar mengikuti latar app bar.
      systemOverlayStyle: gelap ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
    ),
    dividerTheme: DividerThemeData(color: c.line, thickness: 1, space: 1),
    cardTheme: CardThemeData(
      color: c.surfaceRaised,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(AppRadius.lg),
        side: BorderSide(color: c.line),
      ),
    ),
    dialogTheme: DialogThemeData(backgroundColor: c.surfaceRaised, titleTextStyle: t.title, contentTextStyle: t.body),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: c.surfaceRaised, dragHandleColor: c.lineStrong),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: c.ink,
      contentTextStyle: t.body.copyWith(color: c.surfaceRaised),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: c.brand),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((s) => s.contains(WidgetState.selected) ? c.onBrand : c.lineStrong),
      trackColor: WidgetStateProperty.resolveWith((s) => s.contains(WidgetState.selected) ? c.brand : c.surfaceSunken),
      trackOutlineColor: WidgetStateProperty.resolveWith(
        (s) => s.contains(WidgetState.selected) ? c.brand : c.lineStrong,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: _inputBorder(c.lineStrong),
      enabledBorder: _inputBorder(c.lineStrong),
      focusedBorder: _inputBorder(c.brand, width: AppSize.stroke),
      errorBorder: _inputBorder(c.danger),
      focusedErrorBorder: _inputBorder(c.danger, width: AppSize.stroke),
      contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4, vertical: AppSpacing.s4),
      hintStyle: t.body.copyWith(color: c.inkMuted),
      errorStyle: t.small.copyWith(color: c.danger),
      prefixIconColor: c.inkMuted,
      suffixIconColor: c.inkMuted,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: c.brand,
        foregroundColor: c.onBrand,
        minimumSize: const Size.fromHeight(AppSize.button),
        textStyle: t.bodyStrong,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(AppRadius.md)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: c.brand,
        minimumSize: const Size(AppSpacing.minTouch, AppSpacing.minTouch),
        textStyle: t.caption.copyWith(fontWeight: FontWeight.w600),
      ),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: c.ink,
      unselectedLabelColor: c.inkMuted,
      labelStyle: t.bodyStrong,
      unselectedLabelStyle: t.body,
      indicatorColor: c.brand,
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: c.line,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: c.surfaceRaised,
      selectedColor: c.brandSoft,
      side: BorderSide(color: c.line),
      labelStyle: t.caption.copyWith(color: c.ink),
      shape: const StadiumBorder(),
    ),
  );
}

OutlineInputBorder _inputBorder(Color color, {double width = 1}) => OutlineInputBorder(
  borderRadius: const BorderRadius.all(AppRadius.md),
  borderSide: BorderSide(color: color, width: width),
);
