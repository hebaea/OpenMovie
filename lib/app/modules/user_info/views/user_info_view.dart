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
        body: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 60.0,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/photos/images/Personal Photo.jpg'),
                    radius: 50.0,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
