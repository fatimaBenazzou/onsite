import 'package:flutter/material.dart';
import 'package:onsite/screens/layout.dart';
import 'package:onsite/theme/AppTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      themeMode: ThemeMode.light, 
      theme: AppThemes.lightTheme,
      // darkTheme: AppThemes.darkTheme, // Utilisez le thème dark défini dans votre classe AppThemes
      home: LayoutScreen(),
    );
  }
}

