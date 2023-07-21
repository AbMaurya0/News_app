import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_card_item.dart';

class NewsVerticalList extends StatelessWidget {
  const NewsVerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.longestSide,
      child: ListView.builder(
        //physics: const ClampingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const NewsCardItem();
        },
      ),
    );
  }
}
