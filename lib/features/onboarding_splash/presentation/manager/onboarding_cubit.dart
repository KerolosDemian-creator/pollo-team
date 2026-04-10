import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pollo/features/onboarding_splash/data/model/onboarding_page_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
part 'onboarding_states.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit({
    required this.onboardingpages,
    required this.carouselController,
  }) : super(OnboardingInitial());
  int currentIndex = 0;
  final List<OnboardingPageModel> onboardingpages;
  final CarouselSliderController carouselController;
  void setCurrentpage(int index) {
    currentIndex = index;
    emit(CarouselIndexChanged());
  }

  void nextPage() {
    if (currentIndex < onboardingpages.length - 1) {
      currentIndex++;
      carouselController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      emit(CarouselIndexChanged());
    }
  }

  void previouspage() {
    if (currentIndex > 0) {
      currentIndex--;
      carouselController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      emit(CarouselIndexChanged());
    }
  }
}
