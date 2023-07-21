import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controllers/home_screen_controller.dart';
import 'package:news_app/widgets/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // ignore: non_constant_identifier_names
  final ScreenControl = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(bottomNavigationBar: CustomBottomNavigationBar()),
    );
  }
}
