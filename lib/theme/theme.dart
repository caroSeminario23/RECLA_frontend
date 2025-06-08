import 'package:flutter/material.dart';
import 'colors.dart';
import 'typography.dart';

class AppTheme {
  static ThemeData lightTheme() {
    final colorScheme = AppColors.lightScheme();

    return ThemeData(
      colorScheme: colorScheme,
      brightness: Brightness.light,

      textTheme: AppTypography.textTheme
    );
  }
}