import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF87BFFF),
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: const Color(0xFFF2F2F2),
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 48, fontStyle: FontStyle.italic),
        bodyMedium: TextStyle(fontSize: 16),
      ),
    );
  }
}
