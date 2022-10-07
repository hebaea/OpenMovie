import 'package:get/get.dart';

class DiscoverController extends GetxController {
  //TODO: Implement DiscoverController

  var selectedIndex = 0.obs;
  void onItemTapped(var index) {
    var rxIndex = RxInt(index);
    print('rx : ' + rxIndex.toString());
    print('norm : ' + index.toString());
    selectedIndex = RxInt(index);
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
