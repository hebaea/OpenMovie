import 'package:get/get.dart';

import '../controllers/main_feed_navigation_bar_controller.dart';

class MainFeedNavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainFeedNavigationBarController>(
      () => MainFeedNavigationBarController(),
    );
  }
}
