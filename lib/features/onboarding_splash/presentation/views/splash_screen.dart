import 'package:flutter/material.dart';
import 'package:pollo/features/onboarding_splash/presentation/views/widgets/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashBody());
  }
}
