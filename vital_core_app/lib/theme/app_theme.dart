import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get darkTheme {
    final baseTextTheme = GoogleFonts.lexendTextTheme();
    
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        surface: AppColors.surface,
        onSurface: AppColors.onSurface,
        error: AppColors.error,
        onError: AppColors.onError,
        background: AppColors.background,
        onBackground: AppColors.onBackground,
      ),
      textTheme: baseTextTheme.copyWith(
        displayLarge: GoogleFonts.lexend(fontSize: 48, fontWeight: FontWeight.w700, height: 1.1, letterSpacing: -0.02 * 48, color: AppColors.onSurface), // h1
        displayMedium: GoogleFonts.lexend(fontSize: 32, fontWeight: FontWeight.w700, height: 1.2, letterSpacing: -0.01 * 32, color: AppColors.onSurface), // h2
        displaySmall: GoogleFonts.lexend(fontSize: 24, fontWeight: FontWeight.w600, height: 1.3, color: AppColors.onSurface), // h3
        bodyLarge: GoogleFonts.lexend(fontSize: 18, fontWeight: FontWeight.w400, height: 1.6, color: AppColors.onSurface), // body-lg
        bodyMedium: GoogleFonts.lexend(fontSize: 16, fontWeight: FontWeight.w400, height: 1.5, color: AppColors.onSurface), // body-md
        labelLarge: GoogleFonts.lexend(fontSize: 14, fontWeight: FontWeight.w700, height: 1.2, letterSpacing: 0.05 * 14, color: AppColors.onSurface), // label-bold
        labelSmall: GoogleFonts.lexend(fontSize: 12, fontWeight: FontWeight.w500, height: 1.2, color: AppColors.onSurface), // label-sm
      ).apply(
        bodyColor: AppColors.onBackground,
        displayColor: AppColors.onBackground,
      ),
      useMaterial3: true,
    );
  }
}
