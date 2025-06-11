import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Serv App Color Palette
const Color kPrimaryColor = Color(0xFF2A3A95); // Main primary color
const Color kPrimaryVariant = Color(0xFF1E2A70);
const Color kAccentColor = Color(0xFFF2B705); // Warm yellow for accents
const Color kSuccessGreen = Color(0xFF28A745);
const Color kErrorRed = Color(0xFFD32F2F);
const Color kDarkBackground = Color(0xFF121212);
const Color kDarkSurface = Color(0xFF1E1E2F);
const Color kLightBackground = Color(0xFFFFFFFF);
const Color kLightSurface = Color(0xFFF7F9FC);
const Color kTextPrimaryDark = Color(0xFFF5F5F5);
const Color kTextSecondaryDark = Color(0xFFB0B0B0);
const Color kTextPrimaryLight = Color(0xFF1A1A1A);
const Color kTextSecondaryLight = Color(0xFF4F4F4F);
const Color kDividerLight = Color(0xFFE0E0E0);
const Color kDividerDark = Color(0xFF2F2F2F);

ThemeData buildDarkTheme() {
  final ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.white,
    onPrimary: null,
    secondary: null,
    onSecondary: null,
    error: null,
    onError: null,
    surface: null,
    onSurface: null,
  );

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    textTheme: GoogleFonts.openSansTextTheme(
      ThemeData.dark().textTheme.apply(bodyColor: kTextPrimaryDark, displayColor: kTextPrimaryDark),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kAccentColor,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 4,
        shadowColor: kAccentColor.withOpacity(0.3),
      ),
    ),
  );
}

ThemeData buildLightTheme() {
  final ColorScheme colorScheme = ColorScheme(brightness: null, primary: null, onPrimary: null, secondary: null, onSecondary: null, error: null, onError: null, surface: null, onSurface: null
    brightness: Brightness.light,
    primary: kPrimaryColor,
    onPrimary: Colors.white,
    primaryContainer: kPrimaryVariant,
    onPrimaryContainer: Colors.white,
    secondary: kAccentColor,
    onSecondary: Colors.black,
    secondaryContainer: kAccentColor,
    onSecondaryContainer: Colors.black,
    tertiary: kSuccessGreen,
    onTertiary: Colors.white,
    error: kErrorRed,
    onError: Colors.white,
    background: kLightBackground,
    onBackground: kTextPrimaryLight,
    surface: kLightSurface,
    onSurface: kTextPrimaryLight,
    surfaceVariant: kTextSecondaryLight,
    onSurfaceVariant: Colors.black,
    outline: kDividerLight,
    outlineVariant: kTextSecondaryLight,
    shadow: Colors.black12,
    scrim: Colors.black26,
    inverseSurface: kDarkBackground,
    onInverseSurface: Colors.white,
    inversePrimary: Colors.white,
    surfaceTint: kPrimaryColor,
  );

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    textTheme: GoogleFonts.openSansTextTheme(
      ThemeData.light().textTheme.apply(bodyColor: kTextPrimaryLight, displayColor: kTextPrimaryLight),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kAccentColor,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 4,
        shadowColor: kAccentColor.withOpacity(0.3),
      ),
    ),
  );
}
