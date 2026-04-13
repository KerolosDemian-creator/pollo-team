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

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// Email
          AuthFieldItem(
            hintText: LocaleKeys.enterYourEmail.tr(),
            iconData: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
            fieldTitle: LocaleKeys.email.tr(),
          ),

          /// Password
          AuthFieldItem(
            hintText: LocaleKeys.enterYourPassword.tr(),
            iconData: Icons.visibility_outlined,
            keyboardType: TextInputType.visiblePassword,
            fieldTitle: LocaleKeys.password.tr(),
          ),
          SizedBox(height: 8.h),
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

          AppButton(
            text: LocaleKeys.signin.tr(),
            ontap: () {
              context.pushNamed(Routes.homeScreen);
            },
          ),
          SizedBox(height: 16.h),
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

          Text(
            LocaleKeys.signInWith.tr(),
            style: TextStyles.style14W600().copyWith(
              color: AppColors.gray,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 16.h),

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
