import 'package:chat_ap_p/core/routing/routes.dart';
import 'package:chat_ap_p/features/home/screen/home_screen.dart';
import 'package:chat_ap_p/features/onboearding/screen/on_boarding_screen.dart';
import 'package:chat_ap_p/features/onboearding/screen/loading_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loading:
        return MaterialPageRoute(builder: (_) => const LoadingScreen());
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.login:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('Login Page'),
                  ),
                ));
      case Routes.register:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('Register Page'),
                  ),
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
