import 'package:flutter/material.dart';

class AppColors {
  // Primary Palette (Fresh Emerald Mint)
  static const Color primary = Color(0xFF059669); 
  static const Color primaryDark = Color(0xFF047857);
  static const Color primaryLight = Color(0xFFD1FAE5);
  static const Color primaryAccent = Color(0xFF10B981);
  
  // Accents
  static const Color accentGold = Color(0xFFD97706);
  static const Color accentYellow = Color(0xFFF59E0B);
  static const Color accentOrange = Color(0xFFEA580C);
  static const Color accentRose = Color(0xFFE11D48);
  static const Color accentIndigo = Color(0xFF4F46E5);
  static const Color accentTeal = Color(0xFF0D9488);
  
  // Soft Crisp Porcelain Background & Glass Surfaces
  static const Color background = Color(0xFFF1F5F9); // Light Slate Porcelain
  static const Color cardSurface = Colors.white;
  static const Color glassSurface = Color(0xCCFFFFFF); // 80% Frosted Glass
  static const Color darkText = Color(0xFF0F172A); 
  static const Color bodyText = Color(0xFF334155);
  static const Color subtitleText = Color(0xFF64748B);
  static const Color lightBorder = Color(0xFFE2E8F0);
  static const Color glassBorder = Color(0xBFFFFFFF); // Bright White Glare Border
  static const Color softChipBg = Color(0xFFF1F5F9);

  // Light Liquid Glass Gradients (Frosted Pastels)
  static const List<LinearGradient> lightGlassGradients = [
    LinearGradient(colors: [Color(0xFFE6F4EA), Color(0xFFD1FAE5)], begin: Alignment.topLeft, end: Alignment.bottomRight), // Mint Glass
    LinearGradient(colors: [Color(0xFFF0F9FF), Color(0xFFE0F2FE)], begin: Alignment.topLeft, end: Alignment.bottomRight), // Ice Blue Glass
    LinearGradient(colors: [Color(0xFFFFF7ED), Color(0xFFFFEDD5)], begin: Alignment.topLeft, end: Alignment.bottomRight), // Peach Glass
    LinearGradient(colors: [Color(0xFFF5F3FF), Color(0xFFEDE9FE)], begin: Alignment.topLeft, end: Alignment.bottomRight), // Lavender Glass
    LinearGradient(colors: [Color(0xFFFFF1F2), Color(0xFFFFE4E6)], begin: Alignment.topLeft, end: Alignment.bottomRight), // Rose Glass
    LinearGradient(colors: [Color(0xFFFEFCE8), Color(0xFFFEF3C7)], begin: Alignment.topLeft, end: Alignment.bottomRight), // Cream Gold Glass
    LinearGradient(colors: [Color(0xFFF0FDFA), Color(0xFFCCFBF1)], begin: Alignment.topLeft, end: Alignment.bottomRight), // Soft Teal Glass
    LinearGradient(colors: [Color(0xFFFAF5FF), Color(0xFFF3E8FF)], begin: Alignment.topLeft, end: Alignment.bottomRight), // Plum Glass
  ];

  static const LinearGradient lightHeroGlassGradient = LinearGradient(
    colors: [Color(0xFFECFDF5), Color(0xFFD1FAE5), Color(0xFFE0F2FE)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF059669), Color(0xFF10B981)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient splashGradient = LinearGradient(
    colors: [Color(0xFFECFDF5), Color(0xFFD1FAE5), Color(0xFFA7F3D0)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient promoGradient = LinearGradient(
    colors: [Color(0xFFEEF2FF), Color(0xFFE0E7FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient goldGradient = LinearGradient(
    colors: [Color(0xFFFEF3C7), Color(0xFFFDE68A)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient roseGradient = LinearGradient(
    colors: [Color(0xFFFFE4E6), Color(0xFFFECDD3)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const List<LinearGradient> categoryGradients = lightGlassGradients;
  static const LinearGradient darkHeaderGradient = lightHeroGlassGradient;

  // Liquid Glass Ambient Shadows
  static List<BoxShadow> liquidGlassShadow = [
    BoxShadow(
      color: const Color(0xFF0F172A).withOpacity(0.06),
      blurRadius: 24,
      spreadRadius: -2,
      offset: const Offset(0, 8),
    ),
    BoxShadow(
      color: Colors.white.withOpacity(0.8),
      blurRadius: 10,
      offset: const Offset(0, -2),
    ),
  ];

  static List<BoxShadow> softShadow = liquidGlassShadow;

  static List<BoxShadow> primaryGlow = [
    BoxShadow(
      color: const Color(0xFF059669).withOpacity(0.22),
      blurRadius: 18,
      offset: const Offset(0, 6),
    ),
  ];
}


