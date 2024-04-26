import 'package:flutter/material.dart';
import 'package:onsite/screens/login.dart';
import 'package:onsite/theme/app_theme.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.grey1,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset('assets/images/LOGO.png',width: 135, height: 44, ),
      ),
      body: const LoginScreen(),
    );
  }
}