import 'package:flutter/material.dart';

import '../utils/border_radius_style.dart';
import '../utils/color_constant.dart';
import '../utils/text_styles.dart';

class SearchBar1 extends StatelessWidget {
  const SearchBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorConstant.boxgrayA1,
          borderRadius: BorderRadiusStyles.BorderRadiusCircular20),
      height: 50,
      child: TextField(
        cursorColor: ColorConstant.grayA1,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: ColorConstant.grayA1,
            ),
            hintText: 'Sports',
            hintStyle: TextStyles.txtPoppinsMedium14grayA1,
            contentPadding:
                const EdgeInsets.only(top: 15, left: 10, bottom: 30),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstant.boxgrayA1),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstant.boxgrayA1),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstant.grayA1),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
            )),
      ),
    );
  }
}
