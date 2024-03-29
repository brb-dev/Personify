import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';
import 'font_manager.dart';

enum AppTheme {
  light,
  dark,
}

final appThemeData = {
  AppTheme.dark: ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColor.black,
    primaryColor: AppColor.black,
    primaryColorLight: AppColor.black,
    canvasColor: AppColor.white,
    colorScheme: _colorScheme(),
    textTheme: _textTheme(),
    elevatedButtonTheme: _elevatedButtonTheme(),
    appBarTheme: _appBarTheme(),
  ),
  AppTheme.light: ThemeData.light().copyWith(),
};

AppBarTheme _appBarTheme() {
  return AppBarTheme(
    color: AppColor.black,
    elevation: 0,
    titleTextStyle: _textTheme().titleLarge,
  );
}

ColorScheme _colorScheme() {
  return const ColorScheme.dark().copyWith(
    inversePrimary: AppColor.skyBlue,
    inverseSurface: AppColor.blue,
    scrim: AppColor.gradient1,
    shadow: AppColor.gradient2,
    surface: AppColor.gradient3,
    tertiary: AppColor.linearGradient1,
    outline: AppColor.linearGradient2,
    secondary: AppColor.lightBlue,
    onInverseSurface: AppColor.transparentColor,
  );
}

ElevatedButtonThemeData _elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColor.black,
      foregroundColor: AppColor.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(
          color: AppColor.skyBlue,
          width: 2.0,
        ),
      ),
      textStyle: _textTheme().titleMedium,
      elevation: 4,
      disabledBackgroundColor: AppColor.black,
      disabledForegroundColor: AppColor.white,
    ),
  );
}

TextTheme _textTheme() {
  return ThemeData.dark().textTheme.copyWith(
        titleLarge: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s18,
          fontWeight: FontWeightManager.bold,
        ),
        titleMedium: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s12,
          fontWeight: FontWeightManager.bold,
        ),
        titleSmall: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s10,
          fontWeight: FontWeightManager.regular,
        ),
        displayLarge: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s11,
          fontWeight: FontWeightManager.regular,
        ),
        displayMedium: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s36,
          fontWeight: FontWeightManager.bold,
        ),
        displaySmall: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s8,
          fontWeight: FontWeightManager.regular,
        ),
        headlineLarge: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s11,
          fontWeight: FontWeightManager.bold,
        ),
        headlineMedium: GoogleFonts.inter(
          color: AppColor.lightGrey,
          fontSize: FontSize.s16,
          fontWeight: FontWeightManager.bold,
        ),
        headlineSmall: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s12,
          fontWeight: FontWeightManager.regular,
        ),
        labelLarge: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s25,
          fontWeight: FontWeightManager.semiBold,
        ),
        labelMedium: GoogleFonts.inter(
          color: AppColor.skyBlue,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.regular,
        ),
        labelSmall: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s11,
          fontWeight: FontWeightManager.bold,
        ),
        bodyLarge: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s16,
          fontWeight: FontWeightManager.semiBold,
        ),
        bodyMedium: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s15,
          fontWeight: FontWeightManager.regular,
        ),
        bodySmall: GoogleFonts.inter(
          color: AppColor.white,
          fontSize: FontSize.s10,
          fontWeight: FontWeightManager.regular,
        ),
      );
}
