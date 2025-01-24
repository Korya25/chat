import 'package:chat_ap_p/core/theme/themes/app_colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  // Roboto Font
  static const String fontFamily = 'Roboto';

  // Neutral-900 (Light Mode) <=> Neutral-50 (Dark Mode)
  static TextStyle neutral900(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Theme.of(context).brightness == Brightness.light
          ? ColorsManger.neutral_900
          : ColorsManger.neutral_50,
    );
  }

  // Neutral-100 (Light Mode) <=> Neutral-300 (Dark Mode)
  static TextStyle neutral100(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Theme.of(context).brightness == Brightness.light
          ? ColorsManger.neutral_100
          : ColorsManger.neutral_300,
    );
  }

  // Neutral-500 (Light Mode) <=> Neutral-100 (Dark Mode)
  static TextStyle neutral500(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Theme.of(context).brightness == Brightness.light
          ? ColorsManger.neutral_500
          : ColorsManger.neutral_100,
    );
  }

  // Light-Blue-900 (Light Mode) <=> Neutral-100 (Dark Mode)
  static TextStyle lightBlue900(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Theme.of(context).brightness == Brightness.light
          ? ColorsManger.lightBlue_900
          : ColorsManger.neutral_100,
    );
  }

  // Light-Blue-500 (Light Mode) <=> White (Dark Mode)
  static TextStyle lightBlue500(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Theme.of(context).brightness == Brightness.light
          ? ColorsManger.lightBlue_500
          : ColorsManger.white,
    );
  }
}
