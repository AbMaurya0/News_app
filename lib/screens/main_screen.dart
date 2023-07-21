import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/screens/search_screen.dart';
import 'package:news_app/utils/text_styles.dart';

import '../widgets/news_vertical_list.dart';
import '../widgets/slider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Breaking News',
                      style: TextStyles.txtPoppinsSemiBold32black6007f,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Slider1(),
                  ],
                ),
              ),
            ),
            SliverAppBar(
              pinned: true,
              floating: true,
              title: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Top 10 News',
                  style: TextStyles.txtPoppinsMedium15black5007f,
                ),
              ),
              actions: [
                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: TextButton(
                      onPressed: () {
                        Get.to(const SearchScreen());
                      },
                      child: Text(
                        'View all',
                        style: TextStyles.txtPoppinsMedium12blue5000A,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ];
        },
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: NewsVerticalList(),
        ),
      ),
    );
  }
}
