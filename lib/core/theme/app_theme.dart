import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'app_spacing.dart';
import 'app_text.dart';

ThemeData buildAppTheme() {
  final base = ThemeData(useMaterial3: true, brightness: Brightness.light);
  return base.copyWith(
    scaffoldBackgroundColor: AppColors.surface,
    colorScheme: const ColorScheme.light(
      primary: AppColors.brand,
      onPrimary: AppColors.onBrand,
      secondary: AppColors.brandBright,
      error: AppColors.danger,
      onError: AppColors.onDanger,
      surface: AppColors.surface,
      onSurface: AppColors.ink,
      outline: AppColors.line,
    ),
    textTheme: GoogleFonts.plusJakartaSansTextTheme(
      base.textTheme,
    ).apply(bodyColor: AppColors.ink, displayColor: AppColors.ink),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.surfaceRaised,
      foregroundColor: AppColors.ink,
      elevation: 0,
      scrolledUnderElevation: 0,
      titleTextStyle: AppText.title,
    ),
    dividerTheme: const DividerThemeData(color: AppColors.line, thickness: 1, space: 1),
    cardTheme: const CardThemeData(
      color: AppColors.surfaceRaised,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(AppRadius.lg),
        side: BorderSide(color: AppColors.line),
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.surfaceRaised,
      indicatorColor: AppColors.brandSoft,
      labelTextStyle: WidgetStatePropertyAll(AppText.small.copyWith(color: AppColors.ink)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: _inputBorder(AppColors.lineStrong),
      enabledBorder: _inputBorder(AppColors.lineStrong),
      focusedBorder: _inputBorder(AppColors.brand, width: AppSize.stroke),
      errorBorder: _inputBorder(AppColors.danger),
      focusedErrorBorder: _inputBorder(AppColors.danger, width: AppSize.stroke),
      contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4, vertical: AppSpacing.s4),
      hintStyle: AppText.body.copyWith(color: AppColors.inkMuted),
      errorStyle: AppText.small.copyWith(color: AppColors.danger),
      prefixIconColor: AppColors.inkMuted,
      suffixIconColor: AppColors.inkMuted,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.brand,
        foregroundColor: AppColors.onBrand,
        minimumSize: const Size.fromHeight(AppSize.button),
        textStyle: AppText.bodyStrong,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(AppRadius.md)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.brand,
        minimumSize: const Size(AppSpacing.minTouch, AppSpacing.minTouch),
        textStyle: AppText.caption.copyWith(fontWeight: FontWeight.w600),
      ),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: AppColors.ink,
      unselectedLabelColor: AppColors.inkMuted,
      labelStyle: AppText.bodyStrong,
      unselectedLabelStyle: AppText.body,
      indicatorColor: AppColors.brand,
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: AppColors.line,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.surfaceRaised,
      selectedColor: AppColors.brandSoft,
      side: const BorderSide(color: AppColors.line),
      labelStyle: AppText.caption.copyWith(color: AppColors.ink),
      shape: const StadiumBorder(),
    ),
  );
}

OutlineInputBorder _inputBorder(Color color, {double width = 1}) => OutlineInputBorder(
  borderRadius: const BorderRadius.all(AppRadius.md),
  borderSide: BorderSide(color: color, width: width),
);
