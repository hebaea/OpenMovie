import 'package:get/get.dart';

class DiscoverController extends GetxController {
  //TODO: Implement DiscoverController

  var selectedIndex = 0.obs;

  void onItemTapped(var index) {
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
