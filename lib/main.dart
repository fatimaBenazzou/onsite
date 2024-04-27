import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onsite/Layout.dart';
import 'package:onsite/Layout/Logic/LayoutCubit.dart';
import 'package:onsite/firebase_options.dart';
import 'package:onsite/screens/login.dart';
import 'package:onsite/screens/notifications.dart';

import 'Core/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
              home: const LoginScreen(),
            ),
          );
        });
  }
}
