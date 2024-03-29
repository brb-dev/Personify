import 'package:flutter/material.dart';

abstract class Constants {
  static List<Color> linearGradientColorSet1({required BuildContext context}) =>
      [
        Theme.of(context).colorScheme.scrim,
        Theme.of(context).colorScheme.shadow,
        Theme.of(context).colorScheme.surface,
      ];
  static List<Color> linearGradientColorSet2({required BuildContext context}) =>
      [
        Theme.of(context).colorScheme.tertiary,
        Theme.of(context).colorScheme.outline,
      ];
  static List<Color> linearGradientColorSet3({required BuildContext context}) =>
      [
        Theme.of(context).colorScheme.inversePrimary,
        Theme.of(context).colorScheme.inverseSurface,
      ];
  static List<Color> linearGradientColorSet4({required BuildContext context}) =>
      [
        Theme.of(context).primaryColor,
        Theme.of(context).colorScheme.inversePrimary,
      ];
}
