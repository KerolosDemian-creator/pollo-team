import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/core/validation/extentions.dart';
import 'package:pollo/core/validation/locale_keys.dart';
import 'package:pollo/core/widgets/custom_gradient_text.dart';
import 'package:pollo/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:pollo/features/auth/presentation/manager/login_cubit/login_state.dart';
import 'package:pollo/features/auth/presentation/manager/social_media_auth/social_media_auth_cubit.dart';
import 'package:pollo/features/auth/presentation/views/widgets/app_button.dart';
import 'package:pollo/features/auth/presentation/views/widgets/auth_field_item.dart';
import 'package:pollo/features/auth/presentation/views/widgets/social_media_icon.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          loaded: (response) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Welcome back!"),
                backgroundColor: Colors.green,
              ),
            );
            context.pushReplacementNamed(Routes.homeScreen);
          },
          error: (message) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  message,
                  style: const TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.redAccent,
                behavior: SnackBarBehavior.floating,
                duration: const Duration(seconds: 3),
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Column(
            children: [
              /// Email
              AuthFieldItem(
                hintText: LocaleKeys.enterYourEmail.tr(),
                iconData: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                fieldTitle: LocaleKeys.email.tr(),
                txtFieldController: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  if (!value.contains('@')) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),

              /// Password
              AuthFieldItem(
                hintText: LocaleKeys.enterYourPassword.tr(),
                iconData: Icons.visibility_outlined,
                keyboardType: TextInputType.visiblePassword,
                fieldTitle: LocaleKeys.password.tr(),
                txtFieldController: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),

              SizedBox(height: 8.h),

              /// forget password
              Align(
                alignment: Alignment.centerRight,
                child: CustomGradientText(
                  text: Text(
                    LocaleKeys.forgotPassword.tr(),
                    style: TextStyles.style14W600(),
                  ),
                ),
              ),
              SizedBox(height: 24.h),

              /// signIn button

              state.maybeWhen(
                loading: () => const Center(
                  child: CircularProgressIndicator(color: AppColors.primary),
                ),
                orElse: () => AppButton(
                  text: LocaleKeys.signin.tr(),
                  ontap: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<LoginCubit>().login(
                            identifier: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          );
                    }
                  },
                ),
              ),

              SizedBox(height: 16.h),

              /// Have an account? Sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.dontHaveAccount.tr(),
                    style: TextStyles.style14W600().copyWith(
                      color: AppColors.gray,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.signUpScreen);
                    },
                    child: CustomGradientText(
                      end: .8,
                      text: Text(
                        LocaleKeys.signup.tr(),
                        style: TextStyles.style16W500().copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              /// SignIn With Text
              Text(
                LocaleKeys.signInWith.tr(),
                style: TextStyles.style14W600().copyWith(
                  color: AppColors.gray,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 16.h),

              /// Social media icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaIcon(
                    iconImg: AppImages.googleIcon,
                    ontab: () {
                      context.read<SocialMadiaCubit>().loginWithGoogle();
                    },
                  ),
                  SizedBox(width: 16.w),
                  SocialMediaIcon(
                    iconImg: AppImages.facebookIcon,
                    ontab: () {
                      context.read<SocialMadiaCubit>().loginWithFacebook();
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
