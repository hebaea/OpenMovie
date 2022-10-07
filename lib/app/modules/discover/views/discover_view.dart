import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_movie/app/generic_widget/text_field_primary.dart';
import 'package:open_movie/app/generic_widget/text_primary.dart';
import 'package:open_movie/colors/app_colors.dart';
import '../controllers/discover_controller.dart';

class DiscoverView extends GetView<DiscoverController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextPrimary(
          text: 'Discover',
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: AppColors.background,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFieldPrimay(
            suffixIcon: Icons.search,
            hintText: 'Search for the movie you want ...',
          )
          // Container(
          //   color: AppColors.background,
          //   height: 65,
          //   child: Padding(
          //     padding: const EdgeInsets.only(
          //         top: 12, bottom: 12, right: 16, left: 16),
          //     child: Container(
          //       color: AppColors.layerOnePrimary,
          //       height: 41,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
