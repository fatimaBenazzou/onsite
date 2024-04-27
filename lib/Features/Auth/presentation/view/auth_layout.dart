import 'package:flutter/material.dart';
import 'package:onsite/Core/helpers/Constatnts.dart';
import 'package:onsite/Features/Auth/presentation/view/login.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(
          Assets.logo,
          width: 110,
          height: 44,
        ),
      ),
      body: const LoginScreen(),
    );
  }
}
