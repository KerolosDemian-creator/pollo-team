import 'package:flutter/material.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/features/auth/presentation/views/login_screen.dart';
import 'package:pollo/features/auth/presentation/views/signup_screen.dart';
import 'package:pollo/features/home/presentation/views/home_screen.dart';
import 'package:pollo/features/onboarding_splash/presentation/views/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.signUpScreen:
        // return MaterialPageRoute(builder: (context) => const SignUpScreen());
        return MaterialPageRoute(builder: (context) => const SignupScreen());
      case Routes.homeScreen:
        // return MaterialPageRoute(builder: (context) => const HomeScreen());
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No routes defined for ${setting.name}')),
          ),
        );
    }
  }
}
