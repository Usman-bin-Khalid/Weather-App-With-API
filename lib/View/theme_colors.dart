import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/Provider/theme_provider.dart';
import 'package:weather_app/Theme/theme.dart';

class ThemeColors extends ConsumerWidget {
  const ThemeColors({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ⭐️ ACCESSING THE CUSTOM 30 COLORS ⭐️
    final customColors = Theme.of(context).customColors;
    final themeNotifier = ref.watch(themeNotifierProvider.notifier);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // List of the color properties for display (must be manually listed)
    final List<Color> allCustomColors = [
      customColors.primaryRed, customColors.primaryBlue, customColors.primaryGreen, 
      customColors.primaryOrange, customColors.primaryYellow, customColors.primarySkyBlue,
      customColors.primaryAmber, customColors.primaryTeal, customColors.color9, 
      customColors.color10, customColors.color11, customColors.color12, customColors.color13, 
      customColors.color14, customColors.color15, customColors.color16, customColors.color17, 
      customColors.color18, customColors.color19, customColors.color20, customColors.color21, 
      customColors.color22, customColors.color23, customColors.color24, customColors.color25, 
      customColors.color26, customColors.color27, customColors.color28, customColors.color29, 
      customColors.color30,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('30-Color Theme Demonstration'),
        actions: [
          IconButton(
            // Toggle the theme using the Notifier
            onPressed: themeNotifier.toggleTheme,
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.0,
        ),
        itemCount: allCustomColors.length,
        itemBuilder: (context, index) {
          final color = allCustomColors[index];
          final textColor = (color.computeLuminance() > 0.5) ? Colors.black : Colors.white;

          return Container(
            color: color,
            alignment: Alignment.center,
            child: Text(
              'C${index + 1}',
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}