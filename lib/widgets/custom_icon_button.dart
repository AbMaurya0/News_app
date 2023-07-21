import 'package:flutter/material.dart';
import 'package:news_app/utils/color_constant.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  const CustomIconButton({super.key, this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 30,
          color: Colors.black,
        ));
  }
}

class CustomIconButton1 extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  const CustomIconButton1({super.key, this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 20,
          color: Colors.black,
        ));
  }
}

class CustomIconButton2 extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  const CustomIconButton2({super.key, this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 15,
          color: ColorConstant.gray60,
        ));
  }
}

class CustomBackButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CustomBackButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(), backgroundColor: Colors.black12,

        minimumSize: const Size(20, 20), // Adjust the size as desired
      ),
      child: Icon(
        Icons.arrow_left_rounded,
        size: 20,
        color: ColorConstant.whiteF5,
      ),
    );
  }
}
