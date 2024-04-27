import 'package:flutter/material.dart';
import 'package:onsite/Core/index.dart';
import 'package:onsite/Features/Auth/presentation/view/auth_layout.dart';
import 'package:onsite/Features/Auth/presentation/view/login.dart';
import 'package:onsite/Features/Chat/Presentation/View/ChatPage.dart';
import 'package:onsite/Features/Chat/Presentation/View/MainChatScreen.dart';

import 'package:onsite/Features/Home/Presentation/view/HomeScreen.dart';
import 'package:onsite/Layout.dart';

class AppRouter {
  AppRouter();

  Route<dynamic>? generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.login:
        MaterialPageRoute(builder: (ctx) => const LoginScreen());
      case Routes.auth:
        MaterialPageRoute(builder: (ctx) => const AuthLayout());
      case Routes.layout:
        MaterialPageRoute(builder: (ctx) => const LayoutScreen());
      case Routes.home:
        MaterialPageRoute(builder: (ctx) => const HomeScreen());
      case Routes.mainChat:
        MaterialPageRoute(builder: (ctx) => const MainChatScreen());
      case Routes.chat:
        MaterialPageRoute(builder: (ctx) => const ChatPage());
      default:
        return MaterialPageRoute(
            builder: (_) => const Center(
                  child: Text(
                    'No Route Defined',
                    style: TextStyle(color: Colors.white),
                  ),
                ));
    }
    return null;
  }

  Route<dynamic> onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (_) => const Center(
              child: Text(
                'No Route Defined',
                style: TextStyle(color: Colors.white),
              ),
            ));
  }
}
