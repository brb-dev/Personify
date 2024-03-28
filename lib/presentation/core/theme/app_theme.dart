import 'package:flutter/material.dart';

import 'app_color.dart';
import 'base_style.dart';
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
          color: AppColor.lightGrey,
          fontSize: FontSize.s16,
        ),
        headlineSmall: BaseStyles.headlineSmall.copyWith(
          color: AppColor.white,
        ),
        labelLarge: BaseStyles.labelLarge.copyWith(
          color: AppColor.white,
        ),
        labelMedium: BaseStyles.labelMedium.copyWith(
          color: AppColor.skyBlue,
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
