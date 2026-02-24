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

  // Secondary Theme (Class 6-10) - Professional, focused, modern
  static final AppTheme secondary = AppTheme(
    backgroundColor: const Color(0xFFF8FAFC), // Slate 50
    cardGradient: const [
      Color(0xFF6366F1),
      Color(0xFF4F46E5),
    ], // Indigo 500-600
    accentColor: const Color(0xFFF43F5E), // Rose 500
    navBarColor: const Color(0xFF1E293B),
    primaryTextColor: const Color(0xFF0F172A), // Slate 900
    secondaryTextColor: const Color(0xFF64748B), // Slate 500
    categoryColors: [
      const Color(0xFF818CF8), // Indigo 400
      const Color(0xFFFB7185), // Rose 400
      const Color(0xFF34D399), // Emerald 400
      const Color(0xFF60A5FA), // Blue 400
      const Color(0xFFFBBF24), // Amber 400
    ],
  );

  // Senior Theme (Class 11-12) - More mature, professional, and academic look
  static final AppTheme senior = AppTheme(
    backgroundColor: const Color(0xFFF1F5F9), // Slate 100
    cardGradient: const [
      Color(0xFF0F172A), // Slate 900
      Color(0xFF334155), // Slate 700
    ],
    accentColor: const Color(0xFF10B981), // Emerald 500
    navBarColor: const Color(0xFF0F172A), // Slate 900
    primaryTextColor: const Color(0xFF0F172A), // Slate 900
    secondaryTextColor: const Color(0xFF64748B), // Slate 500
    categoryColors: [
      const Color(0xFF6366F1), // Indigo 500
      const Color(0xFFF59E0B), // Amber 500
      const Color(0xFF10B981), // Emerald 500
      const Color(0xFF8B5CF6), // Violet 500
      const Color(0xFFEF4444), // Red 500
    ],
  );

  static AppTheme getTheme(int standard) {
    if (standard >= 11) {
      return senior;
    } else if (standard >= 6) {
      return secondary;
    }
    return junior;
  }
}
