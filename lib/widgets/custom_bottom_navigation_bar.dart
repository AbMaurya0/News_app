import 'package:flutter/material.dart';
import 'package:news_app/screens/search_screen.dart';
import 'package:news_app/screens/category_screen.dart';
import 'package:news_app/screens/main_screen.dart';
import 'package:news_app/screens/profile_screen.dart';
import 'package:news_app/utils/border_radius_style.dart';
import 'package:news_app/utils/color_constant.dart';
import 'package:news_app/utils/text_styles.dart';
import 'package:news_app/widgets/app_drawer.dart';

import 'custom_icon_button.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const MainScreen(),
    const DefaultWidget(),
    CategoryScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: const Icon(
        Icons.home_rounded,
      ),
      slectedIcon: Icon(
        Icons.home_rounded,
        color: ColorConstant.whiteF5,
      ),
      title: "Home",
    ),
    BottomMenuModel(
      icon: const Icon(Icons.turned_in_not),
      title: "Saved",
      slectedIcon: Icon(
        Icons.turned_in_not,
        color: ColorConstant.whiteF5,
      ),
    ),
    BottomMenuModel(
      icon: const Icon(Icons.category),
      title: "Category",
      slectedIcon: Icon(
        Icons.category,
        color: ColorConstant.whiteF5,
      ),
    ),
    BottomMenuModel(
      icon: const Icon(Icons.search),
      title: "Search",
      slectedIcon: Icon(
        Icons.search,
        color: ColorConstant.whiteF5,
      ),
    ),
    BottomMenuModel(
      icon: const Icon(Icons.account_circle_outlined),
      title: "Profile",
      slectedIcon: Icon(
        Icons.account_circle_outlined,
        color: ColorConstant.whiteF5,
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          actions: [
            CustomIconButton(
              icon: Icons.search,
              onPressed: () {
                setState(() {
                  _selectedIndex = 3;
                });
                // HomeScreenController.instance.toggle();
              },
            ),
            CustomIconButton(
              icon: Icons.notifications_outlined,
              onPressed: () {},
            ),
          ],
        ),
        drawer: const AppDrawer(),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.shifting,
          backgroundColor: ColorConstant.blue0A,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
                icon: bottomMenuList[index].icon,
                label: '',
                activeIcon: Container(
                  margin: const EdgeInsets.only(
                    left: 15.0,
                    right: 10.0,
                  ),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: ColorConstant.blue0A,
                      borderRadius: BorderRadiusStyles.BorderRadiusCircular20),
                  child: FittedBox(
                    child: Row(
                      children: [
                        bottomMenuList[index].slectedIcon,
                        const Padding(padding: EdgeInsets.only(right: 5)),
                        Text(bottomMenuList[index].title ?? "",
                            style: TextStyles.txtPoppinsMedium14whitef5)
                      ],
                    ),
                  ),
                ));
          }),

          unselectedItemColor:
              ColorConstant.grayB9, // Color for unselected items
          selectedIconTheme:
              const IconThemeData(size: 30), // Size of selected icon
          unselectedIconTheme:
              const IconThemeData(size: 20), // Size of unselected icons
        ),
      );
    });
  }
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.slectedIcon,
    this.title,
  });

  Icon icon;
  Icon slectedIcon;

  String? title;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Replace with suitable widget')),
    );
  }
}
