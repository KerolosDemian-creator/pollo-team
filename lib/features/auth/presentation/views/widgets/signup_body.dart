import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

import 'package:pollo/core/validation/locale_keys.dart';
import 'package:pollo/core/widgets/custom_gradient_text.dart';

import 'package:pollo/features/auth/presentation/views/widgets/sign_up_form.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              /// sign up appbar
              Align(
                alignment: Alignment.centerLeft,
                child: CustomGradientText(
                  text: Text(
                    LocaleKeys.signup.tr(),
                    style: TextStyles.style24W700().copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  end: .8,
                ),
              ),

              /// register with your valid email address
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  LocaleKeys.registerWithYourValidEmailAddress.tr(),
                  style: TextStyles.style16W500(),
                ),
              ),
              SizedBox(height: 8.h),

              /// gradient line
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 6.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    gradient: AppColors.appGradientColor(),
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
              ),

              SignUpForm(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
