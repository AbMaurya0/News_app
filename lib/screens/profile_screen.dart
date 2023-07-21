import 'package:flutter/material.dart';
import 'package:news_app/utils/color_constant.dart';
import 'package:news_app/utils/text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          const Center(
                            child: Icon(
                              Icons.account_circle_rounded,
                              size: 75,
                            ),
                          ),
                          Positioned(
                            bottom: -0,
                            right: -9,
                            child: Container(
                              height: 26,
                              decoration: BoxDecoration(
                                color: ColorConstant.blue0A,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 12,
                                  color: ColorConstant.whiteF5,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Hello!",
                                style:
                                    TextStyles.txtPoppinsSemiBold16black6007f,
                              ),
                              Text(
                                "Guest",
                                style:
                                    TextStyles.txtPoppinsSemiBold16black6007f,
                              ),
                            ],
                          ),
                          Text(
                            "Login or signup",
                            style: TextStyles.txtPoppinsRegular11black400A1,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConstant.blue0A),
                            child: Center(
                                child: Text(
                              "Edit Profile",
                              style: TextStyles.txtPoppinsMedium14whitef5,
                            )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Preference",
                            style: TextStyles.txtPoppinsSemiBold16black6007f,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Divider(
                          height: 1,
                          color: ColorConstant.grayB9,
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.language_sharp,
                                size: 20,
                                color: ColorConstant.black9007f,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Language',
                                style: TextStyles.txtPoppinsMedium14grayA1,
                              ),
                            ],
                          ),
                          trailing: const Text(
                            'English',
                            //  style: AppStyle.txtRubikRegular10Gray500,
                          ),
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye_rounded,
                                size: 20,
                                color: ColorConstant.black9007f,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Dark Mode',
                                style: TextStyles.txtPoppinsMedium14grayA1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Terms and Privacy",
                            style: TextStyles.txtPoppinsSemiBold16black6007f,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Divider(
                          height: 1,
                          color: ColorConstant.grayB9,
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.library_books_rounded,
                                color: ColorConstant.black9007f,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Terms and Conditions',
                                style: TextStyles.txtPoppinsMedium14grayA1,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.description_rounded,
                                size: 20,
                                color: ColorConstant.black9007f,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Private Policy',
                                style: TextStyles.txtPoppinsMedium14grayA1,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Others",
                            style: TextStyles.txtPoppinsSemiBold16black6007f,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Divider(
                          height: 1,
                          color: ColorConstant.grayB9,
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.share_outlined,
                                color: ColorConstant.black9007f,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Share App',
                                style: TextStyles.txtPoppinsMedium14grayA1,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                size: 20,
                                color: ColorConstant.black9007f,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Rate App',
                                style: TextStyles.txtPoppinsMedium14grayA1,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.help_center_rounded,
                                size: 20,
                                color: ColorConstant.black9007f,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Help Center',
                                style: TextStyles.txtPoppinsMedium14grayA1,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.headphones,
                                size: 20,
                                color: ColorConstant.black9007f,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Contact us',
                                style: TextStyles.txtPoppinsMedium14grayA1,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.info_outline_rounded,
                                size: 20,
                                color: ColorConstant.black9007f,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'About us',
                                style: TextStyles.txtPoppinsMedium14grayA1,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
