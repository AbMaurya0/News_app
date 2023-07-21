import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final List<String> statuses = [
    'All',
    'Educational',
    'Sports',
    'Politics',
    'Live',
    'Exclusive',
  ];
}
