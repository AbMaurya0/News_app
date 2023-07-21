import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  static HomeScreenController get instance => Get.find();
  RxBool setScreen = true.obs;
  void toggle() {
    setScreen.value = !setScreen.value;
  }
}
