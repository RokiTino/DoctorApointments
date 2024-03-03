import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillLightBlueA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlueA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientPrimaryToLightBlueADecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(19.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.04, -2),
          end: Alignment(1.35, 3),
          colors: [
            theme.colorScheme.primary,
            appTheme.lightBlueA700,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlackTL29 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlueA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.h),
        ),
        shadowColor: appTheme.black900.withOpacity(0.1),
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
