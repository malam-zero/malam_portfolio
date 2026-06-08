import 'package:flutter/material.dart';
import 'package:malam_portfolio/utils/app_colors.dart';

class AppTheme {
  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.gray[900]),
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryColor,
      surface: AppColors.darkBackgroundColor,
      onSurface: AppColors.gray[100]!,
    ),
  );
}
