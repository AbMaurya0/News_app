import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/utils/image_constant.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splash = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splash.startAnimation();
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 300,
          left: 100,
          child: Image.asset(
            ImageConstant.forward,
            height: 200,
            width: 200,
          ),
        )
      ]),
    );
  }
}
