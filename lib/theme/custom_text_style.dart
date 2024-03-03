import 'package:flutter/material.dart';
import 'package:hospital/utils/size_utils.dart';
import 'package:hospital/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  // Headline text style
  static get headlineLargeOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Label text style
  static get labelMediumLightblueA400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lightBlueA400,
      );
  static get labelMediumLightblueA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lightBlueA700,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
