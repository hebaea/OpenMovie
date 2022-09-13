import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      title: true ? "Application" : "dasdasd",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
