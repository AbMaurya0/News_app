import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {super.key,
      required this.height,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions});

  double height;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  final width = double.infinity;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: true,
      backgroundColor: Colors.transparent,
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        width,
        height,
      );
}
