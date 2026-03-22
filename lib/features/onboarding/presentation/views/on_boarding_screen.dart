import 'package:flutter/material.dart';
import 'package:pollo/features/onboarding/presentation/views/widgets/on_boarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnBoardingBody());
  }
}
