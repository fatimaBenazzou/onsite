import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  AppColors._();

  static const primary = Color(0xffA06CD5);
  static const secondary = Color(0xff6247AA);
  static const typoColor = Color(0xff080708);
  static const bgColor = Color(0xffFFFFFF);
  static const successState = Color(0xff00EE7F);
  static const errorState = Color(0xffEE0E00);
  static const grey1 = Color(0xffE6D7F4);
  static const grey2 = Color(0xffF6F1FB);
}

class AppFonts {
  static const TextStyle h1Bold = TextStyle(
    fontSize: 62,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle h1Medium = TextStyle(
    fontSize: 62,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle h2Bold = TextStyle(
    fontSize: 53,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle h2Medium = TextStyle(
    fontSize: 53,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle title1Bold = TextStyle(
    fontSize: 33,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle title1Medium = TextStyle(
    fontSize: 33,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle title2Bold = TextStyle(
    fontSize: 33,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle title2Medium = TextStyle(
    fontSize: 33,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle textButton = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}

class AppThemes {
  AppThemes._();

  static ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColors.bgColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        titleTextStyle: TextStyle(color: AppColors.typoColor),
        // iconTheme: IconThemeData(color: AppColors.black),
      ),
      textTheme: GoogleFonts.poppinsTextTheme(),
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
