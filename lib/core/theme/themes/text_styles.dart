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
}
