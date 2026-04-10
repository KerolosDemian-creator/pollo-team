import 'package:carousel_slider/carousel_slider.dart';
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
import 'package:pollo/features/onboarding_splash/data/model/onboarding_page_model.dart';
import 'package:pollo/features/onboarding_splash/presentation/manager/onboarding_cubit.dart';
import 'package:pollo/features/onboarding_splash/presentation/views/widgets/onboarding_skip_button.dart';
import 'package:pollo/features/onboarding_splash/presentation/views/widgets/page_indicator.dart';

class CustomOnboardingCarouselSlider extends StatelessWidget {
  CustomOnboardingCarouselSlider({super.key});

  final List<OnboardingPageModel> onboardingPages = [
    OnboardingPageModel(
      title: LocaleKeys.onboardingtitle1,
      description: LocaleKeys.description1,
      image: AppImages.onboardingImg1,
    ),
    OnboardingPageModel(
      title: LocaleKeys.onboardingtitle2,
      description: LocaleKeys.description2,
      image: AppImages.onboardingImg2,
    ),
    OnboardingPageModel(
      title: LocaleKeys.onboardingtitle3,
      description: LocaleKeys.description3,
      image: AppImages.onboardingImg3,
    ),
  ];

  late final OnboardingCubit cubit = OnboardingCubit(
    onboardingpages: onboardingPages,
    carouselController: CarouselSliderController(),
  );

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: cubit.carouselController,
      itemCount: onboardingPages.length,
      itemBuilder: (context, index, realIndex) {
        final page = onboardingPages[index];
        return Column(
          children: [
            SizedBox(
              width: 300.h,
              height: 300.h,
              child: Image.asset(page.image, fit: BoxFit.cover),
            ),
            SizedBox(height: 40.h),
            PageIndicator(
              index: cubit.currentIndex,
              onboardingPages: onboardingPages,
            ),
            SizedBox(height: 24.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomGradientText(
                text: Text(
                  page.title.tr(),
                  style: TextStyles.style24W700(color: Colors.white),
                ),
                end: .95,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                page.description.tr(),
                style: TextStyles.style20W400(),
              ),
            ),
            Spacer(),
            OnboardingSkipButton(
              ontap: () {
                if (cubit.currentIndex < onboardingPages.length - 1) {
                  cubit.nextPage();
                } else {
                  context.pushReplacementNamed(Routes.loginScreen);
                }
              },
            ),
          ],
        );
      },
      options: CarouselOptions(
        height: 650.h,
        autoPlay: false,
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
        scrollPhysics: const BouncingScrollPhysics(),
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          cubit.setCurrentpage(index);
        },
      ),
    );
  }
}
