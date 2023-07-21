import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_categories_horizontal_list.dart';
import 'package:news_app/widgets/news_vertical_list.dart';
import 'package:news_app/widgets/search_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SearchBar1(),
                ),
              ),
              const SliverToBoxAdapter(child: NewsCategoriesHorizontalList()),
            ];
          },
          body: const Padding(
            padding: EdgeInsets.all(10.0),
            child: NewsVerticalList(),
          )),
    );
  }
}
