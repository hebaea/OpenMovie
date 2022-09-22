import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:open_movie/colors/app_colors.dart';

import '../controllers/user_info_controller.dart';

class UserInfoView extends GetView<UserInfoController> {
  const UserInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          title: const Text(
            'Tell us about you',
            style: TextStyle(
              color: AppColors.textAppPrimay,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 28,
              ),
              Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 57.0,
                      backgroundColor: AppColors.buttonPrimaryBorder,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/photos/images/Personal Photo.jpg'),
                        radius: 55.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                'what should we call you ?',
                style: TextStyle(color: AppColors.textWight, fontSize: 16),
              ),
              SizedBox(height: 8),
              Container(
                height: 41,
                child: TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: 'placeholder',
                      hintStyle: TextStyle(color: AppColors.textLightGray),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: AppColors.layerOnePrimary),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'what is your best jenra',
                style: TextStyle(color: AppColors.textWight, fontSize: 16),
              ),
              SizedBox(height: 8),
              Container(
                height: 41,
                child: TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: 'placeholder',
                      hintStyle: TextStyle(color: AppColors.textLightGray),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: AppColors.layerOnePrimary),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'this data will only be localy stored on so you can see you name in the photo in the app.',
                style: TextStyle(color: AppColors.textLightGray),
              ),
              Expanded(
                child: Container(
                    // color: Colors.green,
                    ),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width - 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonPrimary,
                    side: BorderSide(
                      width: 2.0,
                      color: AppColors.buttonPrimaryBorder,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    // Get.toNamed(Routes.USER_INFO);
                  },
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: AppColors.textWight,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ));
  }
}
