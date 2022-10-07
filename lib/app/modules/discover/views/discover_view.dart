import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/discover_controller.dart';

class DiscoverView extends GetView<DiscoverController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: controller.selectedIndex.toInt(),
        selectedItemColor: Colors.amber[800],
        onTap: controller.onItemTapped,
      ),
      appBar: AppBar(
        title: Text('DiscoverView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DiscoverView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
