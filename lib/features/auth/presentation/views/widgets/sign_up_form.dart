import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/core/validation/extentions.dart';
import 'package:pollo/core/validation/locale_keys.dart';
import 'package:pollo/core/widgets/custom_gradient_text.dart';
import 'package:pollo/features/auth/presentation/views/widgets/app_button.dart';
import 'package:pollo/features/auth/presentation/views/widgets/auth_field_item.dart';
import 'package:pollo/features/auth/presentation/views/widgets/social_media_icon.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Name
          AuthFieldItem(
            hintText: LocaleKeys.enterYourName.tr(),
            iconData: Icons.person_outline,
            keyboardType: TextInputType.name,
            fieldTitle: LocaleKeys.name.tr(),
          ),

          /// Email
          AuthFieldItem(
            hintText: LocaleKeys.enterYourEmail.tr(),
            iconData: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
            fieldTitle: LocaleKeys.email.tr(),
          ),

          /// Phone
          AuthFieldItem(
            hintText: LocaleKeys.enterYourPhone.tr(),
            iconData: Icons.phone_outlined,
            keyboardType: TextInputType.phone,
            fieldTitle: LocaleKeys.phone.tr(),
          ),

          /// Password
          AuthFieldItem(
            hintText: LocaleKeys.enterYourPassword.tr(),
            iconData: Icons.visibility_outlined,
            keyboardType: TextInputType.visiblePassword,
            fieldTitle: LocaleKeys.password.tr(),
          ),

          /// Confirm Password
          AuthFieldItem(
            hintText: LocaleKeys.confirmPassword.tr(),
            iconData: Icons.visibility_outlined,
            keyboardType: TextInputType.visiblePassword,
            fieldTitle: LocaleKeys.confirmPassword.tr(),
          ),

          SizedBox(height: 24.h),

          /// Sign Up Button
          AppButton(
            text: LocaleKeys.signup.tr(),
            ontap: () {
              context.pushNamed(Routes.homeScreen);
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
                  context.pushNamed(Routes.signUpScreen);
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
  }
}
