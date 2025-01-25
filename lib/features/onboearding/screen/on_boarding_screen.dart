// features/onboarding/screens/onboarding_screen.dart
import 'package:chat_ap_p/core/constant/texts_constant.dart';
import 'package:chat_ap_p/features/onboearding/widget/on_boarding_data.dart';
import 'package:chat_ap_p/features/onboearding/widget/on_boarding_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chat_ap_p/core/routing/routes.dart';
import 'package:chat_ap_p/core/theme/themes/app_colors.dart';
import 'package:chat_ap_p/core/theme/themes/text_styles.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < OnboardingData.onboardingScreens.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // الانتقال إلى الشاشة الرئيسية
      Navigator.pushReplacementNamed(context, Routes.homeScreen);
    }
  }

  void _skipToEnd() {
    _pageController.animateToPage(
      OnboardingData.onboardingScreens.length - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: OnboardingData.onboardingScreens.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  final screen = OnboardingData.onboardingScreens[index];
                  return OnboardingStep(
                    title: screen.title,
                    description: screen.description,
                    imagePathLight: screen.imagePathLight,
                    imagePathDark: screen.imagePathDark,
                  );
                },
              ),
            ),
            _buildBottomSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSection() {
    return Column(
      children: [
        _buildGetStartedButton(),
        SizedBox(height: 20.h),
        _buildNavigationControls(),
        SizedBox(height: 40.h),
      ],
    );
  }

  Widget _buildGetStartedButton() {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, Routes.homeScreen);
      },
      child: Container(
        height: 60.h,
        width: 345.w,
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.light
              ? ColorsManger.gradientlightblue
              : ColorsManger.black,
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Center(
          child: Text(
            TextsConstant.getStarted,
            style: TextStyles.font20blackW900(context),
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationControls() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: _skipToEnd,
            child: Text(
              TextsConstant.skip,
              style: TextStyles.font18lightBluekW900(context),
            ),
          ),
          _buildPageIndicators(),
          ElevatedButton(
            onPressed: _nextPage,
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).brightness == Brightness.light
                  ? ColorsManger.lightBlue_100
                  : ColorsManger.lightBlue_100,
              shadowColor: Colors.transparent,
            ),
            child: Text(
              TextsConstant.next,
              style: TextStyles.font18lightBluekW900(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicators() {
    return SizedBox(
      height: 20.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          OnboardingData.onboardingScreens.length,
          (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            width: 8.w,
            height: 8.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPage == index
                  ? Colors.blue
                  // ignore: deprecated_member_use
                  : Colors.grey.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
