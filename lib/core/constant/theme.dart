import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
    fontFamily: "PlayfairDisplay",
    textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColor.primaryColor,
        selectionHandleColor: AppColor.primaryColor,
        selectionColor: AppColor.primaryColor
    ),
    textTheme: const TextTheme(
      // displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      // headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
      // headlineSmall: TextStyle(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.black54),
      //
      // bodySmall: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),
      // labelLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    ),
    primarySwatch: Colors.pink,
  );

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColor.primaryColor,
      selectionHandleColor: AppColor.primaryColor,
      selectionColor: AppColor.primaryColor
  ),
  textTheme: const TextTheme(
    // displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    // bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    // bodySmall: TextStyle(fontSize: 14),
    //
    // titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    // labelLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
  ),
  primarySwatch: Colors.pink,
);
