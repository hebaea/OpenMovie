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
                  decoration: InputDecoration(
                      hintText: 'placeholder',
                      hintStyle: TextStyle(color: AppColors.textLightGray),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      labelText: 'Password',
                      filled: true,
                      fillColor: AppColors.layerOnePrimary),
                ),
              )
            ],
          ),
        ));
  }
}
