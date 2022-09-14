import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:open_movie/app/models/OnboardingContent.dart';

import 'app/routes/app_pages.dart';

List<OnboardingContent> onboardingContents = [
  OnboardingContent(
      imageName: 'onboarding1',
      title: 'Keep Trak',
      description:
          'the marvie move univers is one step away from you, stay tuned and give your apenionstay tuned and.',
      buttonText: 'Next'),
  OnboardingContent(
      imageName: 'onboarding2',
      title: 'All New Movies',
      description:
          'the marvie move univers is one step away from you, stay tuned and give your apenionstay tuned and.',
      buttonText: 'One more'),
  OnboardingContent(
      imageName: 'onboarding3',
      title: 'Enjoy Every Moment',
      description:
          'the marvie move univers is one step away from you, stay tuned and give your apenionstay tuned and.',
      buttonText: 'Happy to have you'),
];
int onboardingContentsIndex = 0;
void main() {
  runApp(
    GetMaterialApp(
      themeMode: ThemeMode.system,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
