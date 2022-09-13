import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:open_movie/colors/app_colors.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/photos/images/onboarding1.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
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
                padding: const EdgeInsets.symmetric(horizontal: 63),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 37),
                       Center(
                        child: Text(
                          'Keep Trak',
                          style: TextStyle(
                              color: AppColors.textPrimay,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          'the marvie move univers is one step away from you, stay tuned and give your apenionstay tuned and.',
                          style: TextStyle(
                            color: AppColors.textWight,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 21),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.buttonPrimary,
                            side: BorderSide(
                              width: 2.0,
                              color: AppColors.buttonPrimaryBorder,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(8), // <-- Radius
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              color: AppColors.textWight,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
