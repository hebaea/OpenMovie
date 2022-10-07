import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:open_movie/app/generic_widget/button_primary.dart';
import 'package:open_movie/app/generic_widget/text_field_primary.dart';
import 'package:open_movie/app/generic_widget/text_primary.dart';
import 'package:open_movie/app/routes/app_pages.dart';
import 'package:open_movie/colors/app_colors.dart';

import '../controllers/user_info_controller.dart';

class UserInfoView extends GetView<UserInfoController> {
  const UserInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          title: TextPrimary(
            text: 'Tell us about you',
            color: AppColors.textAppPrimay,
            fontSize: 24,
          ),
          centerTitle: true,
        ),
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28),
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
                  Positioned(
                    top: 77,
                    right: 130,
                    child: Center(
                      child: IconButton(
                        color: Colors.red,
                        icon: Image.asset('assets/photos/icons/plus_icon.png'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              TextPrimary(
                text: 'what should we call you ?',
                color: AppColors.textWight,
                fontSize: 16,
              ),
              SizedBox(height: 8),
              Container(
                  height: 41,
                  child: TextFieldPrimay(
                    hintText: "placeholder",
                  )),
              SizedBox(
                height: 16,
              ),
              TextPrimary(
                text: 'what is your best jenra',
                color: AppColors.textWight,
                fontSize: 16,
              ),
              SizedBox(height: 8),
              TextFieldPrimay(
                hintText: 'placeholder',
              ),
              SizedBox(
                height: 8,
              ),
              TextPrimary(
                text:
                    'this data will only be localy stored on so you can see you name in the photo in the app.',
                color: AppColors.textLightGray,
              ),
              Expanded(
                child: Container(
                    // color: Colors.green,
                    ),
              ),
              ButtonPrimary(
                width: MediaQuery.of(context).size.width - 40,
                title: 'Save',
                onClick: () {
                  Get.toNamed(Routes.DISCOVER);
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ));
  }
}
