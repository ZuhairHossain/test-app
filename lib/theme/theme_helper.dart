import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test_application/core/utils/size_utils.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueGray700,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray700,
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 12.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 40.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w900,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 32.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w900,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 27.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w900,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w900,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFF1FF58),
    primaryContainer: Color(0XFF404040),
    secondaryContainer: Color(0XFFD4D4D4),

    // Error colors
    errorContainer: Color(0XFFA2A2A2),
    onErrorContainer: Color(0XFF171717),

    // On colors(text colors)
    onPrimary: Color(0XFF262626),
    onPrimaryContainer: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black90000 => Color(0X00000000);

  // BlueGray
  Color get blueGray600 => Color(0XFF5A4C8D);
  Color get blueGray700 => Color(0XFF525252);

  // Gray
  Color get gray100 => Color(0XFFF5F5F5);
  Color get gray300 => Color(0XFFE5E5E5);
  Color get gray500 => Color(0XFFC0A4A2);
  Color get gray600 => Color(0XFF737373);

  // Orange
  Color get orange200 => Color(0XFFFDBE7F);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
