import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColors {
  AppColors._();

  static const primary = Color(0xffA06CD5);
  static const secondary = Color(0xff6247AA);
  static const typoColor = Color(0xff080708);
  static const bgColor = Color(0xffFFFFFF);
  static const successState = Color(0xff00EE7F);
  static const errorState = Color(0xffEE0E00);
  static const grey1 = Color.fromARGB(255, 160, 159, 159);
  static const grey2 = Color(0xffF6F1FB);
  static ColorScheme lightColorScheme = const ColorScheme.light(
      primary: primary,
      onPrimary: typoColor,
      secondary: secondary,
      background: bgColor,
      onBackground: typoColor,
      tertiary: grey1,
      surface: grey2);
}

class AppFonts {
  static TextStyle h1Bold = TextStyle(
      fontSize: 33.sp, fontWeight: FontWeight.w900, fontFamily: 'Sfprodisplay');
  static TextStyle h1Medium = TextStyle(
      fontSize: 33.sp, fontWeight: FontWeight.w500, fontFamily: 'Sfprodisplay');
  static TextStyle h2Bold = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w900, fontFamily: 'Sfprodisplay');
  static TextStyle h2Medium = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w500, fontFamily: 'Sfprodisplay');
  static TextStyle title1Bold = TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.w500, fontFamily: 'Sfprodisplay');
  static TextStyle title1Medium = TextStyle(
      fontSize: 15.sp, fontWeight: FontWeight.w500, fontFamily: 'Sfprodisplay');
  static TextStyle title2Bold =
      TextStyle(fontSize: 15.sp, fontFamily: 'Sfprodisplay');

  static get lightThemeText => TextTheme(
        headlineLarge: h1Bold,
        headlineMedium: h1Medium,
        headlineSmall: h2Bold,
        titleLarge: h2Medium,
        titleMedium: title1Bold,
        titleSmall: title1Medium,
        bodyMedium: title2Bold,
      );
}

class AppThemes {
  AppThemes._();

  static ThemeData lightTheme = ThemeData.light().copyWith(
      colorScheme: AppColors.lightColorScheme,
      scaffoldBackgroundColor: AppColors.bgColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        titleTextStyle: TextStyle(color: AppColors.typoColor),
        // iconTheme: IconThemeData(color: AppColors.black),
      ),
      textTheme: AppFonts.lightThemeText,
      // .copyWith(headlineLarge: const TextStyle(color: Colors.white)
      // ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 48,
          ),
          backgroundColor: AppColors.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ));
}
