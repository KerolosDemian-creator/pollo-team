import 'package:flutter/material.dart';
import 'package:pollo/features/auth/presentation/views/widgets/signup_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SignupBody());
  }
}
