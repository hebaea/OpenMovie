import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:open_movie/colors/app_colors.dart';

import '../controllers/discover_controller.dart';

class DiscoverView extends GetView<DiscoverController> {
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
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
      appBar: AppBar(
        title: Text('DiscoverView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: IndexedStack(
          index: controller.selectedIndex.value,
          children: [
            Text(
              'Index 0: Home',
            ),
            Text(
              'Index 1: Business',
            ),
          ],
        ),
        // Center(
        //   //_widgetOptions.elementAt(_selectedIndex),
        //   child: _widgetOptions.elementAt(controller.selectedIndex.value),
        //   // child: Text(
        //   //   'DiscoverView is working',
        //   //   style: TextStyle(fontSize: 20),
        //   // ),
        // ),
      ),
    );
  }
}
