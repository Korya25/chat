// ignore_for_file: deprecated_member_use

import 'package:chat_ap_p/core/theme/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorsManger.white,
    colorScheme: ColorScheme.light(
      primary: ColorsManger.primary50,
      onPrimary: ColorsManger.neutral_900,
      secondary: ColorsManger.lightBlue_500,
      onSecondary: ColorsManger.white,
      surface: ColorsManger.white,
      onSurface: ColorsManger.neutral_900,
      background: ColorsManger.white,
      onBackground: ColorsManger.neutral_900,
      error: Colors.red,
      onError: Colors.white,
    ),
    cardTheme: CardTheme(
      color: ColorsManger.white,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ColorsManger.white,
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: ColorsManger.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorsManger.neutral_900.withOpacity(0.05),
      filled: true,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorsManger.black,
    colorScheme: ColorScheme.dark(
      primary: ColorsManger.primary_900,
      onPrimary: ColorsManger.neutral_50,
      secondary: ColorsManger.lightBlue_500,
      onSecondary: ColorsManger.neutral_100,
      surface: ColorsManger.neutral_700,
      onSurface: ColorsManger.neutral_50,
      // ignore: duplicate_ignore
      // ignore: deprecated_member_use
      background: ColorsManger.black,
      // ignore: duplicate_ignore
      // ignore: deprecated_member_use
      onBackground: ColorsManger.neutral_50,
      error: Colors.red,
      onError: Colors.white,
    ),
    cardTheme: CardTheme(
      color: ColorsManger.primary_800,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ColorsManger.neutral_700,
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: ColorsManger.neutral_700,
    ),
    inputDecorationTheme: InputDecorationTheme(
      // ignore: duplicate_ignore
      // ignore: deprecated_member_use
      fillColor: ColorsManger.white.withOpacity(0.2),
      filled: true,
    ),
  );
}
