import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_movie/app/models/OnboardingContent.dart';
import 'package:open_movie/app/routes/app_pages.dart';
import 'package:open_movie/colors/app_colors.dart';
import 'package:open_movie/main.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  List<OnboardingContent> onboardingContents = [
    OnboardingContent(
        imagePath: 'assets/photos/images/onboarding1.jpg',
        title: 'Keep Trak',
        description:
            'the marvie move univers is one step away from you, stay tuned and give your apenionstay tuned and.',
        buttonText: 'Next'),
    OnboardingContent(
        imagePath: 'assets/photos/images/onboarding2.jpg',
        title: 'All New Movies',
        description:
            'the marvie move univers is one step away from you, stay tuned and give your apenionstay tuned and.',
        buttonText: 'One more'),
    OnboardingContent(
        imagePath: 'assets/photos/images/onboarding3.jpeg',
        title: 'Enjoy Every Moment',
        description:
            'the marvie move univers is one step away from you, stay tuned and give your apenionstay tuned and.',
        buttonText: 'Happy to have you'),
  ];
  var onboardingContentsIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => Image.asset(
              onboardingContents[onboardingContentsIndex.toInt()].imagePath,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                  color: AppColors.layerOnePrimary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              height: 250,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 37),
                      Center(
                        child: Obx(
                          () => Text(
                            onboardingContents[onboardingContentsIndex.toInt()]
                                .title,
                            style: TextStyle(
                                color: AppColors.textAppPrimay,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Obx(
                          () => Text(
                            textAlign: TextAlign.center,
                            onboardingContents[onboardingContentsIndex.toInt()]
                                .description,
                            style: TextStyle(
                              color: AppColors.textWight,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 21),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonPrimary,
                            side: BorderSide(
                              width: 2.0,
                              color: AppColors.buttonPrimaryBorder,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(8), // <-- Radius
                            ),
                          ),
                          onPressed: () {
                            if (onboardingContentsIndex <= 2) {
                              onboardingContentsIndex =
                                  onboardingContentsIndex + 1;
                            } else
                              print('go to home screen');
                          },
                          child: Obx(
                            () => Text(
                              onboardingContents[
                                      onboardingContentsIndex.toInt()]
                                  .buttonText,
                              style: TextStyle(
                                color: AppColors.textWight,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.layerOnePrimary.withOpacity(0.8),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              height: 46,
              width: 240,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Image.asset(
                      'assets/photos/icons/github.png',
                      height: 28,
                      width: 28,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Text Clicked');
                    },
                    child: Text('@Zeglaty /',
                        style: TextStyle(
                            color: AppColors.textWight, fontSize: 16)),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Text Clicked');
                    },
                    child: Text(' @Heba Abdo ',
                        style: TextStyle(
                            color: AppColors.textWight, fontSize: 16)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
