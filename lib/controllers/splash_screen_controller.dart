import 'package:get/get.dart';

import 'package:news_app/screens/home_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get instance => Get.find();
  Future startAnimation() async {
    await Future.delayed(const Duration(seconds: 2));

    Get.off(() => HomeScreen());
  }
}
