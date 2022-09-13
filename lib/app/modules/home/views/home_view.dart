import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:open_movie/colors/app_colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.isDarkMode
                    ? Get.changeTheme(ThemeData.light())
                    : Get.changeTheme(ThemeData.dark());
              },
              icon: Icon(Icons.light_sharp))
        ],
        title: Text(
          Get.isDarkMode ? 'dark mode' : 'light mode',
          style: Theme.of(context).textTheme.headline3,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20, color: AppColors.primary),
        ),
      ),
    );
  }
}
