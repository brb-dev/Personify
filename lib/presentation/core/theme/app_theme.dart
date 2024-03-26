import 'package:flutter/material.dart';

import 'app_color.dart';
import 'base_style.dart';
import 'font_manager.dart';

enum AppTheme {
  light,
  dark,
}

final appThemeData = {
  AppTheme.dark: ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColor.skyBlue,
    primaryColor: AppColor.black,
    primaryColorLight: AppColor.black,
    canvasColor: AppColor.white,
    colorScheme: _colorScheme(),
    textTheme: _textTheme(),
    elevatedButtonTheme: _elevatedButtonTheme(),
  ),
  AppTheme.light: ThemeData.dark().copyWith(),
};

ColorScheme _colorScheme() {
  return const ColorScheme.light().copyWith();
}

ElevatedButtonThemeData _elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColor.black,
      foregroundColor: AppColor.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      textStyle: _textTheme().titleMedium,
      elevation: 4,
      disabledBackgroundColor: AppColor.black,
      disabledForegroundColor: AppColor.white,
      shadowColor: AppColor.black.withOpacity(0.08),
    ),
  );
}

TextTheme _textTheme() {
  return ThemeData.light().textTheme.copyWith(
        titleLarge: BaseStyles.titleLarge.copyWith(
          color: AppColor.white,
        ),
        titleMedium: BaseStyles.titleMedium.copyWith(
          color: AppColor.white,
        ),
        titleSmall: BaseStyles.titleSmall.copyWith(
          color: AppColor.white,
        ),
        displayLarge: BaseStyles.headlineLarge.copyWith(
          color: AppColor.white,
        ),
        displayMedium: BaseStyles.displaySmallBold.copyWith(
          color: AppColor.white,
        ),
        displaySmall: BaseStyles.displaySmall.copyWith(
          color: AppColor.white,
        ),
        headlineLarge: BaseStyles.headlineLarge.copyWith(
          color: AppColor.white,
        ),
        headlineMedium: BaseStyles.headlineLargeBold.copyWith(
          color: AppColor.white,
          fontSize: FontSize.s16,
        ),
        headlineSmall: BaseStyles.headlineSmall.copyWith(
          color: AppColor.white,
        ),
        labelLarge: BaseStyles.labelLarge.copyWith(
          color: AppColor.white,
        ),
        labelMedium: BaseStyles.labelMedium.copyWith(
          color: AppColor.white,
        ),
        labelSmall: BaseStyles.bodyLarge.copyWith(
          color: AppColor.white,
          fontSize: FontSize.s11,
          fontWeight: FontWeightManager.bold,
        ),
        bodyLarge: BaseStyles.bodyLarge.copyWith(
          color: AppColor.white,
        ),
        bodyMedium: BaseStyles.bodyMedium.copyWith(
          color: AppColor.white,
        ),
        bodySmall: BaseStyles.bodySmall.copyWith(
          color: AppColor.white,
        ),
      );
}
