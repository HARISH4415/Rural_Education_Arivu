import 'package:flutter/material.dart';

class AppTheme {
  final Color backgroundColor;
  final List<Color> cardGradient;
  final Color accentColor;
  final Color navBarColor;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final List<Color> categoryColors;

  AppTheme({
    required this.backgroundColor,
    required this.cardGradient,
    required this.accentColor,
    required this.navBarColor,
    required this.primaryTextColor,
    required this.secondaryTextColor,
    required this.categoryColors,
  });

  // Default Junior Theme (Class 1-5)
  static final AppTheme junior = AppTheme(
    backgroundColor: const Color(0xFFF3F1FF),
    cardGradient: const [Color(0xFF8B80F8), Color(0xFF6B58F2)], // Purple
    accentColor: const Color(0xFFFFC6A5), // Peach
    navBarColor: const Color(0xFF1E293B),
    primaryTextColor: const Color(0xFF1E293B),
    secondaryTextColor: Colors.grey,
    categoryColors: [
      const Color(0xFFC7D2FE), // Indigo 100
      const Color(0xFFFED7AA), // Orange 100
      const Color(0xFFBCF0DA), // Teal 100
      const Color(0xFFFBCFE8), // Pink 100
      const Color(0xFFFDE68A), // Amber 100
    ],
  );

  // Senior Theme (Class 6-12) - More mature, scientific look
  static final AppTheme senior = AppTheme(
    backgroundColor: const Color(0xFFE0F7FA), // Light Cyan
    cardGradient: const [Color(0xFF00ACC1), Color(0xFF00838F)], // Cyan/Teal
    accentColor: const Color(0xFFFFAB91), // Deep Orange 200
    navBarColor: const Color(0xFF1E293B),
    primaryTextColor: const Color(0xFF263238),
    secondaryTextColor: const Color(0xFF546E7A),
    categoryColors: [
      const Color(0xFFB2EBF2), // Cyan 100
      const Color(0xFFFFCCBC), // Deep Orange 100
      const Color(0xFFDCEDC8), // Light Green 100
      const Color(0xFFE1BEE7), // Purple 100
      const Color(0xFFFFF9C4), // Yellow 100
    ],
  );

  static AppTheme getTheme(int standard) {
    if (standard >= 6) {
      return senior;
    }
    return junior;
  }
}
