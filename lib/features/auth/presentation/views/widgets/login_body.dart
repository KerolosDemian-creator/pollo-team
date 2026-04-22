import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/validation/locale_keys.dart';
import 'package:pollo/core/widgets/custom_gradient_text.dart';
import 'package:pollo/features/auth/presentation/views/widgets/login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(AppImages.gradientLoginAppbar),
          SizedBox(height: 30.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomGradientText(
                    text: Text(
                      LocaleKeys.signin.tr(),
                      style: TextStyles.style24W700().copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    end: .8,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    LocaleKeys.signInToRegisterationAccount.tr(),
                    style: TextStyles.style16W500(),
                  ),
                ),
                SizedBox(height: 8.h),
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
                SizedBox(height: 16.h),
                LoginForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
