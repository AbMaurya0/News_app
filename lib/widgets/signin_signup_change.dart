import 'package:flutter/material.dart';

import '../utils/color_constant.dart';
import '../utils/text_styles.dart';
import 'sign_in_form.dart';
import 'sign_up_form.dart';

class SigninSignupChange extends StatefulWidget {
  const SigninSignupChange({super.key});

  @override
  State<SigninSignupChange> createState() => _SigninSignupChangeState();
}

final List<String> _statuses = [
  'Sign in',
  'Sign up',
];
int _selectedIndex = 0;
final PageController _pageController = PageController();

class _SigninSignupChangeState extends State<SigninSignupChange> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 48.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _statuses.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: _selectedIndex == index
                          ? ColorConstant.black9007f
                          : ColorConstant.whiteF5,
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                        _pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 6),
                      child: Center(
                          child: Text(
                        _statuses[index],
                        style: TextStyles.txtPoppinsMedium15black5007f.copyWith(
                          color: _selectedIndex == index
                              ? ColorConstant.whiteF5
                              : ColorConstant.gray60,
                        ),
                      )),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: [
              const SignInForm(),
              SignUpForm(),
            ],
          ),
        ),
      ],
    );
  }
}
