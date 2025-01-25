import 'package:chat_ap_p/core/constant/image_avgs_constant.dart';
import 'package:chat_ap_p/core/constant/texts_constant.dart';
import 'package:chat_ap_p/core/routing/routes.dart';
import 'package:chat_ap_p/core/theme/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, Routes.introduce_1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              SizedBox(height: 20.h),

              // Row for E-Chat Icon & Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Theme.of(context).brightness == Brightness.light
                        ? ImageAvgsConstant.eChatLightLogo
                        : ImageAvgsConstant.eChatDarkLogo,
                    height: 80.h,
                    width: 82.w,
                  ),
                  SizedBox(width: 15.w), // Spacing between icon and text
                  Text(
                    TextsConstant.appName,
                    textAlign: TextAlign.center,
                    style: TextStyles.font33DeepOceanBlueOrWhiteW900(context),
                  ),
                ],
              ),

              const Spacer(flex: 1),

              // Stack for Loading Done Icon & Text
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    ImageAvgsConstant.onbreadingLoadingDone,
                    height: 300.h,
                    width: 300.w,
                  ),
                  Positioned(
                    top: 120.h,
                    child: Text(
                      TextsConstant.slogan,
                      textAlign: TextAlign.center,
                      style: TextStyles.font22LightBlue800And300W900(context),
                    ),
                  ),
                ],
              ),

              const Spacer(flex: 1),

              // Version Text
              Text(
                TextsConstant.appVersion,
                textAlign: TextAlign.center,
                style:
                    TextStyles.font18lightBlue_500AndlightBlue_300W500(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
