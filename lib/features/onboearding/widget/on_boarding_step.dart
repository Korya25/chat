// features/onboarding/widgets/onboarding_step.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chat_ap_p/core/theme/themes/text_styles.dart';

class OnboardingStep extends StatelessWidget {
  final String title;
  final String description;
  final String imagePathLight;
  final String imagePathDark;

  const OnboardingStep({
    super.key,
    required this.title,
    required this.description,
    required this.imagePathLight,
    required this.imagePathDark,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Theme.of(context).brightness == Brightness.light
                ? imagePathLight
                : imagePathDark,
            height: 300.h,
            width: 300.w,
          ),
          SizedBox(height: 40.h),
          Text(
            title,
            style: TextStyles.font25blue_400W900(context),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),
          Text(
            description,
            style: TextStyles.font18blue_400W900(context),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
