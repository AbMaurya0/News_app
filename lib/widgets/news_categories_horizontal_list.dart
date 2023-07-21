import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:news_app/controllers/category_controller.dart';

import '../utils/color_constant.dart';
import '../utils/text_styles.dart';

class NewsCategoriesHorizontalList extends StatefulWidget {
  const NewsCategoriesHorizontalList({super.key});

  @override
  State<NewsCategoriesHorizontalList> createState() =>
      _NewsCategoriesHorizontalListState();
}

class _NewsCategoriesHorizontalListState
    extends State<NewsCategoriesHorizontalList> {
  final categorycon = Get.put(CategoryController());
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 50.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorycon.statuses.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: _selectedIndex == index
                      ? ColorConstant.blue0A
                      : ColorConstant.boxgrayA1,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 6,
                    ),
                    child: Center(
                      child: Text(
                        categorycon.statuses[index],
                        style: TextStyles.txtPoppinsMedium14grayA1.copyWith(
                          color: _selectedIndex == index
                              ? ColorConstant.whiteF5
                              : ColorConstant.grayA1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
