import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:open_movie/app/models/OnboardingContent.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      themeMode: ThemeMode.system,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
