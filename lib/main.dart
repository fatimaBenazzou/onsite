import 'package:flutter/material.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/Layout.dart';
import 'package:onsite/Layout/Logic/LayoutCubit.dart';

import 'Core/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, context) {
          return BlocProvider(
            create: (context) => LayoutCubit(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Onsite',
              theme: AppThemes.lightTheme,
              onGenerateRoute: AppRouter().generateRoute,
              onUnknownRoute: AppRouter().onUnknownRoute,
              // darkTheme: AppThemes.darkTheme, // Utilisez le thème dark défini dans votre classe AppThemes
              home: const LayoutScreen(),
            ),
          );
        });
  }
}
