import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:onsite/Core/helpers/ApiServices.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/Features/Auth/presentation/view-model/cubit/auth_cubit.dart';
import 'package:onsite/Features/Auth/presentation/view/auth_layout.dart';
import 'package:onsite/Features/Chat/Presentation/View/ChatPage.dart';
import 'package:onsite/Features/Home/Presentation/view-model/cubit/tasks_cubit_cubit.dart';
import 'package:onsite/Layout.dart';
import 'package:onsite/Layout/Logic/LayoutCubit.dart';
import 'package:onsite/firebase_options.dart';
import 'Core/helpers/ServiceLocator.dart';
import 'Core/index.dart';
import 'Features/Auth/presentation/view/login.dart';
import 'Features/Chat/Presentation/View/MainChatScreen.dart';
import 'Features/Home/Presentation/view/HomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await ServiceLocator.setupLocator();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => LayoutCubit(),
              ),
              BlocProvider(
                create: (context) => AuthCubit(ServiceLocator.locator<ApiService>()),
              ),
              BlocProvider(
                create: (context) => TasksCubitCubit(ServiceLocator.locator<ApiService>()),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Onsite',
              theme: AppThemes.lightTheme,
              home:const LoginScreen(),
              //FirebaseAuth.instance.currentUser==null?// :const LayoutScreen(),
              routes: {
                Routes.auth: (context) => const AuthLayout(),
                Routes.layout: (context) => const LayoutScreen(),
                Routes.home: (context) => const HomeScreen(),
                Routes.mainChat: (context) => const MainChatScreen(),
                Routes.chat: (context) => const ChatPage(),
                Routes.login: (context) => const LoginScreen(),
              },
              onGenerateRoute: AppRouter().generateRoute,
              onUnknownRoute: AppRouter().onUnknownRoute,
            ),
          );
        });
  }
}
