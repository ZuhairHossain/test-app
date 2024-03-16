import 'package:flutter/material.dart';
import 'package:test_application/core/utils/size_utils.dart';
import 'package:test_application/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700.withOpacity(0.6),
      );
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 17.fSize,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallOnPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Headline text style
  static get headlineLargePrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get headlineSmallInterBluegray700 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.blueGray700,
      );
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineSmallOnPrimary_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Label text style
  static get labelLargeBluegray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargeSFProDisplayOnPrimary =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProDisplayPrimaryContainer =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleMediumInterOnPrimaryContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumPoppinsOnPrimary =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleSmallBlack => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsOnErrorContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsOnErrorContainerBold =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsOnPrimary =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsSecondaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSFProDisplayBluegray700 =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}
