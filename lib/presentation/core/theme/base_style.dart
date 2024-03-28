import 'package:flutter/material.dart';

import 'font_manager.dart';

class BaseStyles {
  BaseStyles._();

  ///H1 Emphasized
  static TextStyle displaySmall = const TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s8,
    fontWeight: FontWeightManager.regular,
  );

  ///H2 Emphasized
  static TextStyle headlineLarge = const TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s11,
    fontWeight: FontWeightManager.bold,
  );

  ///H3 Emphasized
  static TextStyle headlineSmall = const TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s12,
  );

  ///H4 Emphasized
  static TextStyle titleLarge = const TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s18,
    fontWeight: FontWeightManager.bold,
  );

  ///Body Emphasized
  static TextStyle titleMedium = const TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s12,
    fontWeight: FontWeightManager.bold,
  );

  ///Body Small Emphasized
  static TextStyle titleSmall = const TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s10,
    fontWeight: FontWeightManager.regular,
  );

  ///Body XSmall Emphasized
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s12,
    fontWeight: FontWeightManager.bold,
  );

  ///Body Small Regular
  static const TextStyle labelLarge = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s22,
    fontWeight: FontWeightManager.bold,
  );

  ///Body XSmall Regular
  static const TextStyle labelMedium = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s14,
    fontWeight: FontWeightManager.regular,
  );

  ///Body Regular
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.semiBold,
  );

  //body XXSmall Regular
  static const TextStyle bodySmall = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s10,
    fontWeight: FontWeightManager.regular,
  );

  static const TextStyle header = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle displaySmallBold = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s36,
    fontWeight: FontWeightManager.bold,
  );
  static const TextStyle headlineLargeBold = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s32,
    fontWeight: FontWeightManager.bold,
  );

  static const TextStyle display = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s12,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle displayLink = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontSize.s12,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.underline,
  );
}
