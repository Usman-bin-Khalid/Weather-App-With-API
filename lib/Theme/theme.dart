// import 'package:flutter/material.dart';

// final lightTheme = ThemeData(
//   brightness: Brightness.light,
//   primaryColor: Color(0xff1a1a16),
//   colorScheme: ColorScheme.light(
//     primary: Color.fromARGB(26, 255, 255, 255),
//     secondary: Colors.white,
//     surface: Colors.white30,
//     onPrimary: Colors.white70,
   
//   ),
// );
// final darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   primaryColor: Color(0xffFAFAFA),
//   colorScheme: ColorScheme.dark(
//     primary: Color.fromARGB(31, 8, 0, 0),
//     secondary: Colors.black,
//     surface: Colors.black38,
//     onPrimary: Colors.black38,
//   ),
// );


// File: lib/Theme/theme.dart

import 'package:flutter/material.dart';

// =========================================================================
// 1. CUSTOM 30-COLOR PALETTE DEFINITION (NEW)
// =========================================================================

/// A class to hold all 30 custom, named colors for our application.
/// Note: Colors are repeated to meet the 30 property requirement for demonstration.
class AppColors extends ThemeExtension<AppColors> {
  // --- Core Colors (8 unique names) ---
  final Color primaryRed;
  final Color primaryBlue;
  final Color primaryGreen;
  final Color primaryOrange;
  final Color primaryYellow;
  final Color primarySkyBlue;
  final Color primaryAmber;
  final Color primaryTeal;

  // --- Repeated for a total of 30 properties ---
  final Color color9;
  final Color color10;
  final Color color11;
  final Color color12;
  final Color color13;
  final Color color14;
  final Color color15;
  final Color color16;
  final Color color17;
  final Color color18;
  final Color color19;
  final Color color20;
  final Color color21;
  final Color color22;
  final Color color23;
  final Color color24;
  final Color color25;
  final Color color26;
  final Color color27;
  final Color color28;
  final Color color29;
  final Color color30;


  const AppColors({
    required this.primaryRed, required this.primaryBlue, required this.primaryGreen, 
    required this.primaryOrange, required this.primaryYellow, required this.primarySkyBlue,
    required this.primaryAmber, required this.primaryTeal,
    required this.color9, required this.color10, required this.color11, required this.color12, 
    required this.color13, required this.color14, required this.color15, required this.color16, 
    required this.color17, required this.color18, required this.color19, required this.color20, 
    required this.color21, required this.color22, required this.color23, required this.color24, 
    required this.color25, required this.color26, required this.color27, required this.color28, 
    required this.color29, required this.color30,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Color? primaryRed, Color? primaryBlue, Color? primaryGreen, Color? primaryOrange, 
    Color? primaryYellow, Color? primarySkyBlue, Color? primaryAmber, Color? primaryTeal,
    Color? color9, Color? color10, Color? color11, Color? color12, Color? color13, 
    Color? color14, Color? color15, Color? color16, Color? color17, Color? color18,
    Color? color19, Color? color20, Color? color21, Color? color22, Color? color23, 
    Color? color24, Color? color25, Color? color26, Color? color27, Color? color28,
    Color? color29, Color? color30,
  }) {
    return AppColors(
      primaryRed: primaryRed ?? this.primaryRed, primaryBlue: primaryBlue ?? this.primaryBlue, 
      primaryGreen: primaryGreen ?? this.primaryGreen, primaryOrange: primaryOrange ?? this.primaryOrange, 
      primaryYellow: primaryYellow ?? this.primaryYellow, primarySkyBlue: primarySkyBlue ?? this.primarySkyBlue, 
      primaryAmber: primaryAmber ?? this.primaryAmber, primaryTeal: primaryTeal ?? this.primaryTeal,
      color9: color9 ?? this.color9, color10: color10 ?? this.color10, color11: color11 ?? this.color11,
      color12: color12 ?? this.color12, color13: color13 ?? this.color13, color14: color14 ?? this.color14,
      color15: color15 ?? this.color15, color16: color16 ?? this.color16, color17: color17 ?? this.color17,
      color18: color18 ?? this.color18, color19: color19 ?? this.color19, color20: color20 ?? this.color20,
      color21: color21 ?? this.color21, color22: color22 ?? this.color22, color23: color23 ?? this.color23,
      color24: color24 ?? this.color24, color25: color25 ?? this.color25, color26: color26 ?? this.color26,
      color27: color27 ?? this.color27, color28: color28 ?? this.color28, color29: color29 ?? this.color29,
      color30: color30 ?? this.color30,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      primaryRed: Color.lerp(primaryRed, other.primaryRed, t)!, primaryBlue: Color.lerp(primaryBlue, other.primaryBlue, t)!, 
      primaryGreen: Color.lerp(primaryGreen, other.primaryGreen, t)!, primaryOrange: Color.lerp(primaryOrange, other.primaryOrange, t)!, 
      primaryYellow: Color.lerp(primaryYellow, other.primaryYellow, t)!, primarySkyBlue: Color.lerp(primarySkyBlue, other.primarySkyBlue, t)!, 
      primaryAmber: Color.lerp(primaryAmber, other.primaryAmber, t)!, primaryTeal: Color.lerp(primaryTeal, other.primaryTeal, t)!,
      color9: Color.lerp(color9, other.color9, t)!, color10: Color.lerp(color10, other.color10, t)!, color11: Color.lerp(color11, other.color11, t)!,
      color12: Color.lerp(color12, other.color12, t)!, color13: Color.lerp(color13, other.color13, t)!, color14: Color.lerp(color14, other.color14, t)!,
      color15: Color.lerp(color15, other.color15, t)!, color16: Color.lerp(color16, other.color16, t)!, color17: Color.lerp(color17, other.color17, t)!,
      color18: Color.lerp(color18, other.color18, t)!, color19: Color.lerp(color19, other.color19, t)!, color20: Color.lerp(color20, other.color20, t)!,
      color21: Color.lerp(color21, other.color21, t)!, color22: Color.lerp(color22, other.color22, t)!, color23: Color.lerp(color23, other.color23, t)!,
      color24: Color.lerp(color24, other.color24, t)!, color25: Color.lerp(color25, other.color25, t)!, color26: Color.lerp(color26, other.color26, t)!,
      color27: Color.lerp(color27, other.color27, t)!, color28: Color.lerp(color28, other.color28, t)!, color29: Color.lerp(color29, other.color29, t)!,
      color30: Color.lerp(color30, other.color30, t)!,
    );
  }
}

// =========================================================================
// 2. LIGHT AND DARK COLOR SETS (30 COLORS EACH) (NEW)
// =========================================================================

// Darker colors for light backgrounds
const AppColors lightColors = AppColors(
  primaryRed: Color(0xFFC62828), primaryBlue: Color(0xFF0D47A1), primaryGreen: Color(0xFF2E7D32),
  primaryOrange: Color(0xFFEF6C00), primaryYellow: Color(0xFFFF8F00), primarySkyBlue: Color(0xFF006064),
  primaryAmber: Color(0xFFFFB300), primaryTeal: Color(0xFF004D40), 
  color9: Color(0xFFC62828), color10: Color(0xFF0D47A1), color11: Color(0xFF2E7D32),
  color12: Color(0xFFEF6C00), color13: Color(0xFFFF8F00), color14: Color(0xFF006064),
  color15: Color(0xFFFFB300), color16: Color(0xFF004D40), color17: Color(0xFFC62828),
  color18: Color(0xFF0D47A1), color19: Color(0xFF2E7D32), color20: Color(0xFFEF6C00),
  color21: Color(0xFFFF8F00), color22: Color(0xFF006064), color23: Color(0xFFFFB300),
  color24: Color(0xFF004D40), color25: Color(0xFFC62828), color26: Color(0xFF0D47A1),
  color27: Color(0xFF2E7D32), color28: Color(0xFFEF6C00), color29: Color(0xFFFF8F00),
  color30: Color(0xFF006064),
);

// Lighter colors for dark backgrounds
const AppColors darkColors = AppColors(
  primaryRed: Color(0xFFFFCDD2), primaryBlue: Color(0xFF90CAF9), primaryGreen: Color(0xFFA5D6A7),
  primaryOrange: Color(0xFFFFCC80), primaryYellow: Color(0xFFFFF176), primarySkyBlue: Color(0xFF80DEEA),
  primaryAmber: Color(0xFFFFECB3), primaryTeal: Color(0xFF80CBC4), 
  color9: Color(0xFFFFCDD2), color10: Color(0xFF90CAF9), color11: Color(0xFFA5D6A7),
  color12: Color(0xFFFFCC80), color13: Color(0xFFFFF176), color14: Color(0xFF80DEEA),
  color15: Color(0xFFFFECB3), color16: Color(0xFF80CBC4), color17: Color(0xFFFFCDD2),
  color18: Color(0xFF90CAF9), color19: Color(0xFFA5D6A7), color20: Color(0xFFFFCC80),
  color21: Color(0xFFFFF176), color22: Color(0xFF80DEEA), color23: Color(0xFFFFECB3),
  color24: Color(0xFF80CBC4), color25: Color(0xFFFFCDD2), color26: Color(0xFF90CAF9),
  color27: Color(0xFFA5D6A7), color28: Color(0xFFFFCC80), color29: Color(0xFFFFF176),
  color30: Color(0xFF80DEEA),
);

// =========================================================================
// 3. THEME DATA DEFINITIONS (UPDATED)
// =========================================================================

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xff1a1a16),
  colorScheme: const ColorScheme.light(
    primary: Color.fromARGB(26, 255, 255, 255),
    secondary: Colors.white,
    surface: Colors.white30,
    onPrimary: Colors.white70,
  ),
  // ⭐️ ADD THE CUSTOM COLORS EXTENSION ⭐️
  extensions: <ThemeExtension<dynamic>>[lightColors],
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xffFAFAFA),
  colorScheme: const ColorScheme.dark(
    primary: Color.fromARGB(31, 8, 0, 0),
    secondary: Colors.black,
    surface: Colors.black38,
    onPrimary: Colors.black38,
  ),
  // ⭐️ ADD THE CUSTOM COLORS EXTENSION ⭐️
  extensions: <ThemeExtension<dynamic>>[darkColors],
);

// =========================================================================
// 4. HELPER EXTENSION (NEW)
// =========================================================================

/// Helper extension to easily access the custom colors anywhere you have a Context.
extension CustomThemeExtension on ThemeData {
  AppColors get customColors => extension<AppColors>()!;
}