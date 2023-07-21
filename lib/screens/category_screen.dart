import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controllers/category_controller.dart';
import 'package:news_app/utils/color_constant.dart';

import '../utils/text_styles.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  final categorycon = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Categories',
            style: TextStyles.txtPoppinsSemiBold32black6007f,
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: categorycon.statuses.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CategoryItem(index: index),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key, required this.index});
  final int index;
  final categorycon = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: GridTile(
        footer: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: GridTileBar(
              backgroundColor: ColorConstant.black9007f.withOpacity(0.5),
              title: Align(
                alignment: Alignment.center,
                child: Text(
                  categorycon.statuses[index],
                  style: TextStyles.txtPoppinsMedium20whitef5,
                ),
              )),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          child: Image.network(
            'https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
