import 'package:chat_ap_p/core/routing/routes.dart';
import 'package:chat_ap_p/features/onboearding/introduce_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.introduce_1:
        return MaterialPageRoute(builder: (_) => const IntroduceScreen());
      case Routes.introduce_2:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('Introduce 2 Page'),
                  ),
                ));
      case Routes.introduce_3:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('Introduce 3 Page'),
                  ),
                ));
      case Routes.introduce_4:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('Introduce 4 Page'),
                  ),
                ));
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
