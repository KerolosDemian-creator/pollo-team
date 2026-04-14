import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/auth/data/repos/auth_repo/auth_repo_imp.dart';
import 'package:pollo/features/auth/presentation/manager/sign_up/sign_up_cubit.dart';
import 'package:pollo/features/auth/presentation/views/widgets/signup_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => SignUpCubit(authRepo: AuthRepoImp()),
      child: const SignupBody(),
    ));
  }
}
