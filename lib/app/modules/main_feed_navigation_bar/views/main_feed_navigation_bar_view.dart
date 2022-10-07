import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_movie/app/modules/discover/views/discover_view.dart';
import 'package:open_movie/colors/app_colors.dart';
import '../controllers/main_feed_navigation_bar_controller.dart';

class MainFeedNavigationBarView
    extends GetView<MainFeedNavigationBarController> {
  static List<Widget> _widgetOptions = <Widget>[
    DiscoverView(),
    Text(
      'Index 1: Business',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: AppColors.background,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.bottomBarUnselectedTab,
          onTap: controller.onItemTapped,
        ),
      ),
      body: Obx(
        () => Center(
          //_widgetOptions.elementAt(_selectedIndex),
          child: _widgetOptions.elementAt(controller.selectedIndex.value),
        ),
      ),
    );
  }
}
