import 'package:flutter/material.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/features/auth/presentation/views/login_screen.dart';
import 'package:pollo/features/auth/presentation/views/signup_screen.dart';
import 'package:pollo/features/home/presentation/views/home_screen.dart';
import 'package:pollo/features/onboarding_splash/presentation/views/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const LoginScreen(),
        );

      case Routes.signUpScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SignupScreen(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
