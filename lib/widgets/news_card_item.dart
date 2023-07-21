import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intl/intl.dart';
import 'package:news_app/utils/text_styles.dart';
import 'package:news_app/widgets/custom_icon_button.dart';

import '../screens/news_detail_screen.dart';

class NewsCardItem extends StatelessWidget {
  const NewsCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    String formattedDate =
        DateFormat('dd MMMM yyyy | EEEE').format(DateTime.now());
    return InkWell(
      onTap: () {
        Get.to(() => const NewsDetailPage());
      },
      child: SizedBox(
        height: 130,
        child: Card(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://plus.unsplash.com/premium_photo-1679496830187-5b7a3def833e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bmV3c3BhcGVyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
                    height: height * 0.15,
                    width: width * 0.3,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sports',
                        style: TextStyles.txtPoppinsRegular12gray400A1,
                      ),
                      Text(
                        '14-year-old Dev Shah of Florida',
                        style: TextStyles.txtPoppinsMedium15black5007f,
                      ),
                      Text(
                        formattedDate,
                        style: TextStyles.txtPoppinsRegular12gray400A1,
                      )
                    ],
                  ),
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton2(
                    icon: Icons.more_horiz_rounded,
                  ),
                  CustomIconButton2(icon: Icons.turned_in_not)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
