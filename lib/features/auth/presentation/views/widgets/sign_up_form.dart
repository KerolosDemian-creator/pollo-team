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
    return BlocConsumer<SignUpCubit, SignUpState>(
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
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: Colors.redAccent,
                behavior: SnackBarBehavior.floating,
                action: SnackBarAction(
                  label: 'Retry',
                  textColor: Colors.white,
                  onPressed: () {},
                ),
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
              // Name
              AuthFieldItem(
                hintText: LocaleKeys.enterYourName.tr(),
                iconData: Icons.person_outline,
                keyboardType: TextInputType.name,
                fieldTitle: LocaleKeys.name.tr(),
                txtFieldController: nameController,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Name is required';
                  }

                  return null;
                },
              ),

              /// Email
              AuthFieldItem(
                hintText: LocaleKeys.enterYourEmail.tr(),
                iconData: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                fieldTitle: LocaleKeys.email.tr(),
                txtFieldController: emailController,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  if (!value.contains('@') || !value.contains('.')) {
                    return 'Enter a valid email';
                  }
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
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Phone is required';
                  }
                  if (value.length < 11) {
                    return 'Enter a valid Phone Number';
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
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),

              /// Confirm Password
              AuthFieldItem(
                hintText: LocaleKeys.confirmPassword.tr(),
                iconData: Icons.visibility_outlined,
                keyboardType: TextInputType.visiblePassword,
                fieldTitle: LocaleKeys.confirmPassword.tr(),
                txtFieldController: confirmPasswordController,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  if (value != passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),

              SizedBox(height: 24.h),

              /// Sign Up Button
              AppButton(
                text: LocaleKeys.signup.tr(),
                ontap: () {
                  debugPrint("Signup Button Tapped!");
                  if (_formKey.currentState!.validate()) {
                    context.read<SignUpCubit>().signUp(
                        email: emailController.text,
                        password: passwordController.text,
                        name: nameController.text,
                        phone: phoneController.text,
                        confirmPassword: confirmPasswordController.text);
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
                    style: TextStyles.style14W600().copyWith(
                      color: AppColors.gray,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                          context); // أو context.pushReplacementNamed(Routes.loginScreen);
                    },
                    child: CustomGradientText(
                      end: .8,
                      text: Text(
                        LocaleKeys.signin.tr(),
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

              /// Sign Up With Social Media
              Text(
                LocaleKeys.signUpWith.tr(),
                style: TextStyles.style14W600().copyWith(
                  color: AppColors.gray,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 16.h),

              /// Social Media Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SocialMediaIcon(iconImg: AppImages.googleIcon),
                  SizedBox(width: 16.w),
                  const SocialMediaIcon(iconImg: AppImages.facebookIcon),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
