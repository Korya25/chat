import 'package:chat_ap_p/core/theme/themes/app_colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  // DeepOceanBlue (Light Mode) <=> White (Dark Mode)
  static TextStyle font33DeepOceanBlueOrWhiteW900(BuildContext context) {
    return TextStyle(
      fontSize: 33,
      fontWeight: FontWeight.w900,
      color: Theme.of(context).brightness == Brightness.light
          ? ColorsManger.deepOceanBlue
          : ColorsManger.white,
    );
  }

  // lightBlue_800 (Light Mode) <=> lightBlue_300 (Dark Mode)
  static TextStyle font22LightBlue800And300W900(BuildContext context) {
    return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w900,
      color: Theme.of(context).brightness == Brightness.light
          ? ColorsManger.lightBlue_800
          : ColorsManger.lightBlue_300,
    );
  }

  // lightBlue_500 (Light Mode) <=> lightBlue_300 (Dark Mode)
  static TextStyle font18lightBlue_500AndlightBlue_300W500(
      BuildContext context) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).brightness == Brightness.light
          ? ColorsManger.lightBlue_500
          : ColorsManger.lightBlue_300,
    );
  }

  // blue_400 (Light Mode) <=> (Dark Mode)
  static TextStyle font25blue_400W900(BuildContext context) {
    return TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w900,
      color: ColorsManger.blue_400,
    );
  }

  // blue_400 (Light Mode) <=>  (Dark Mode)
  static TextStyle font18blue_400W900(BuildContext context) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: ColorsManger.blue_400,
    );
  }

  // black (Light Mode) <=>  (Dark Mode)
  static TextStyle font20blackW900(BuildContext context) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w900,
      color: Theme.of(context).brightness == Brightness.light
          ? ColorsManger.white
          : ColorsManger.lightBlue_300,
    );
  }

  // black (Light Mode) <=>  (Dark Mode)
  static TextStyle font18lightBluekW900(BuildContext context) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Theme.of(context).brightness == Brightness.light
          ? ColorsManger.lightBlue_600
          : ColorsManger.lightBlue_600,
    );
  }
}
