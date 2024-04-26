import 'package:flutter/material.dart';
import 'package:onsite/Core/index.dart';

import 'package:onsite/Features/Home/Presentation/view/HomeScreen.dart';

class AppRouter {
  AppRouter() {}

  Route<dynamic>? generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.home:
        MaterialPageRoute(builder: (ctx) =>const HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Center(
                  child: Text(
                    'No Route Defined',
                    style: TextStyle(color: Colors.black),
                  ),
                ));
    }
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
