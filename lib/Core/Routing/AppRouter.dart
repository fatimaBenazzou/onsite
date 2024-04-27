import 'package:flutter/material.dart';
import 'package:onsite/Core/index.dart';
import 'package:onsite/Features/Chat/Presentation/View/ChatPage.dart';
import 'package:onsite/Features/Chat/Presentation/View/MainChatScreen.dart';

import 'package:onsite/Features/Home/Presentation/view/HomeScreen.dart';

class AppRouter {
  AppRouter() {}

  Route<dynamic>? generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.home:
        MaterialPageRoute(builder: (ctx) =>const HomeScreen());
      case Routes.mainChat:
        MaterialPageRoute(builder: (ctx) =>const MainChatScreen());
      case Routes.chat:
        MaterialPageRoute(builder: (ctx) =>const ChatPage());
      default:
        return MaterialPageRoute(
            builder: (_) => const Center(
                  child: Text(
                    'No Route Defined',
                    style: TextStyle(color: Colors.black),
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
                style: TextStyle(color: Colors.black),
              ),
            ));
  }
}
