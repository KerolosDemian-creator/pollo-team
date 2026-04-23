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
import 'package:pollo/features/auth/presentation/manager/sign_up/sign_up_cubit.dart';
import 'package:pollo/features/auth/presentation/manager/sign_up/sign_up_state.dart';
import 'package:pollo/features/auth/presentation/manager/social_media_auth/social_media_auth_cubit.dart';
import 'package:pollo/features/auth/presentation/manager/social_media_auth/social_media_auth_state.dart'; // تأكد من الاستيراد
import 'package:pollo/features/auth/presentation/views/widgets/app_button.dart';
import 'package:pollo/features/auth/presentation/views/widgets/auth_field_item.dart';
import 'package:pollo/features/auth/presentation/views/widgets/social_media_icon.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        /// 1. Listener for Email/Password Sign Up
        BlocListener<SignUpCubit, SignUpState>(
          listener: (context, state) {
            state.whenOrNull(
              loading: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => const Center(
                    child: CircularProgressIndicator(color: AppColors.primary),
                  ),
                );
              },
              loaded: (signUpResponse) {
                // نقفل الـ Loading Dialog
                Navigator.of(context, rootNavigator: true).pop();

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Account created successfully!"),
                    backgroundColor: Colors.green,
                  ),
                );
                context.pushReplacementNamed(Routes.homeScreen);
              },
              error: (message) {
                // نقفل الـ Loading Dialog لو كان مفتوح
                Navigator.of(context, rootNavigator: true).pop();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                    backgroundColor: Colors.redAccent,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
            );
          },
        ),

        /// 2. Listener for Social Media Login (Google/Facebook)
        BlocListener<SocialMadiaCubit, SocialMediaAuthState>(
          listener: (context, state) {
            if (state is SocialMediaAuthSuccess) {
              context.pushReplacementNamed(Routes.homeScreen);
            } else if (state is SocialMediaAuthFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage),
                  backgroundColor: Colors.redAccent,
                ),
              );
            }
          },
        ),
      ],
      child: BlocBuilder<SignUpCubit, SignUpState>(
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: Column(
              children: [
                // Name
                AuthFieldItem(
                  hintText: LocaleKeys.enterYourName.tr(),
                  iconData: Icons.person_outline,
                  keyboardType: TextInputType.name,
                  fieldTitle: LocaleKeys.name.tr(),
                  txtFieldController: nameController,
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Name is required'
                      : null,
                ),

                /// Email
                AuthFieldItem(
                  hintText: LocaleKeys.enterYourEmail.tr(),
                  iconData: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  fieldTitle: LocaleKeys.email.tr(),
                  txtFieldController: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Email is required';
                    if (!value.contains('@')) return 'Enter a valid email';
                    return null;
                  },
                ),

                /// Phone
                AuthFieldItem(
                  hintText: LocaleKeys.enterYourPhone.tr(),
                  iconData: Icons.phone_outlined,
                  keyboardType: TextInputType.phone,
                  fieldTitle: LocaleKeys.phone.tr(),
                  txtFieldController: phoneController,
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Phone is required'
                      : null,
                ),

                /// Password
                AuthFieldItem(
                  hintText: LocaleKeys.enterYourPassword.tr(),
                  iconData: Icons.visibility_outlined,
                  keyboardType: TextInputType.visiblePassword,
                  fieldTitle: LocaleKeys.password.tr(),
                  txtFieldController: passwordController,
                  validator: (value) => (value == null || value.length < 6)
                      ? 'Password too short'
                      : null,
                ),

                /// Confirm Password
                AuthFieldItem(
                  hintText: LocaleKeys.confirmPassword.tr(),
                  iconData: Icons.visibility_outlined,
                  keyboardType: TextInputType.visiblePassword,
                  fieldTitle: LocaleKeys.confirmPassword.tr(),
                  txtFieldController: confirmPasswordController,
                  validator: (value) {
                    if (value != passwordController.text)
                      return 'Passwords do not match';
                    return null;
                  },
                ),

                SizedBox(height: 24.h),

                /// Sign Up Button
                AppButton(
                  text: LocaleKeys.signup.tr(),
                  ontap: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<SignUpCubit>().signUp(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                            name: nameController.text.trim(),
                            phone: phoneController.text.trim(),
                            confirmPassword:
                                confirmPasswordController.text.trim(),
                          );
                    }
                  },
                ),
                SizedBox(height: 16.h),

                /// Have an account? Sign In
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.haveAnAccount.tr(),
                      style: TextStyles.style14W600()
                          .copyWith(color: AppColors.gray),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: CustomGradientText(
                        text: Text(
                          LocaleKeys.signin.tr(),
                          style: TextStyles.style16W500()
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),

                /// Sign Up With Social Media
                Text(
                  LocaleKeys.signUpWith.tr(),
                  style:
                      TextStyles.style14W600().copyWith(color: AppColors.gray),
                ),
                SizedBox(height: 16.h),

                /// Social Media Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaIcon(
                      iconImg: AppImages.googleIcon,
                      ontab: () =>
                          context.read<SocialMadiaCubit>().loginWithGoogle(),
                    ),
                    SizedBox(width: 16.w),
                    SocialMediaIcon(
                      iconImg: AppImages.facebookIcon,
                      ontab: () =>
                          context.read<SocialMadiaCubit>().loginWithFacebook(),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
