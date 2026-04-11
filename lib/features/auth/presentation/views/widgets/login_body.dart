import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/validation/locale_keys.dart';
import 'package:pollo/core/widgets/custom_gradient_text.dart';
import 'package:pollo/features/auth/presentation/views/widgets/app_button.dart';
import 'package:pollo/features/auth/presentation/views/widgets/custom_txt_field.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              Form(
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentGeometry.centerLeft,
                      child: Text(
                        LocaleKeys.email.tr(),
                        style: TextStyles.style18W500(),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    CustomTxtField(
                      hintText: LocaleKeys.enterYourEmail.tr(),
                      iconButton: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.email_outlined,
                          color: AppColors.lightGray,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Align(
                      alignment: AlignmentGeometry.centerLeft,
                      child: Text(
                        LocaleKeys.password.tr(),
                        style: TextStyles.style18W500(),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    CustomTxtField(
                      hintText: LocaleKeys.enterYourPassword.tr(),
                      iconButton: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.visibility_outlined,
                          color: AppColors.lightGray,
                        ),
                      ),
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

                    AppButton(),
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
                        CustomGradientText(
                          end: .8,
                          text: Text(
                            LocaleKeys.signup.tr(),
                            style: TextStyles.style16W500().copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
