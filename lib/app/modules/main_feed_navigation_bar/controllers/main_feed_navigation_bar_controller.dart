import 'package:get/get.dart';

class MainFeedNavigationBarController extends GetxController {
  //TODO: Implement MainFeedNavigationBarController

  var selectedIndex = 1.obs;

  void onItemTapped(int index) {
    print('index = ' + index.toString());
    selectedIndex.value = index;
  }

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
