import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Walk',
      theme: AppTheme.lightTheme,
      home: const WelcomePage(),
    );
  }
}
