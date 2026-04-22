import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/auth/data/repos/auth_repo/auth_repo_imp.dart';
import 'package:pollo/features/auth/data/repos/social_media_auth/social_media_auth_repo_imp.dart';
import 'package:pollo/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:pollo/features/auth/presentation/manager/social_media_auth/social_media_auth_cubit.dart';
import 'package:pollo/features/auth/presentation/views/widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(authRepo: AuthRepoImp()),
        ),
        BlocProvider(
          create: (context) =>
              SocialMadiaCubit(socialMadiaAuthRepo: SocialAuthRepositoryImp()),
        ),
      ],
      child: const LoginBody(),
    ));
  }
}
