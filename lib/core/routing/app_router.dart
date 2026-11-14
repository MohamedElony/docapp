import 'package:docapp/core/routing/routes.dart';
import 'package:docapp/features/login/ui/login_screen.dart';
import 'package:docapp/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {

    Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
          settings: settings,
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route define ${settings.name}')),
          ),
        );
    }
  }
}
