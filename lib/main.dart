import 'package:flutter/material.dart';
import 'package:onsite/screens/auth_layout.dart';
import 'package:onsite/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light, 
      theme: AppThemes.lightTheme,
      // darkTheme: AppThemes.darkTheme, // Utilisez le thème dark défini dans votre classe AppThemes
      home: const AuthLayout(),
    );
  }
}

