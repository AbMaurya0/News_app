import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../screens/home_screen.dart';
import '../utils/color_constant.dart';
import '../utils/text_styles.dart';

class SignUpForm extends StatelessWidget {
  final GlobalKey<FormState> _signUpFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signUpFormKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create New account",
                style: TextStyles.txtPoppinsSemiBold28black6007f,
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: TextFormField(
                  cursorRadius: const Radius.circular(10),
                  cursorColor: ColorConstant.black9007f,
                  cursorHeight: 20,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      labelStyle: TextStyles.txtPoppinsSemiBold16black6007f,
                      labelText: 'Name',
                      hintText: 'Enter your Name',
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: TextFormField(
                  cursorRadius: const Radius.circular(10),
                  cursorColor: ColorConstant.black9007f,
                  cursorHeight: 20,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      labelStyle: TextStyles.txtPoppinsSemiBold16black6007f,
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: TextFormField(
                  cursorRadius: const Radius.circular(10),
                  cursorColor: ColorConstant.black9007f,
                  cursorHeight: 20,
                  controller: _passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelStyle: TextStyles.txtPoppinsSemiBold16black6007f,
                      contentPadding: const EdgeInsets.all(10),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: TextFormField(
                  cursorRadius: const Radius.circular(10),
                  cursorColor: ColorConstant.black9007f,
                  cursorHeight: 20,
                  controller: _passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelStyle: TextStyles.txtPoppinsSemiBold16black6007f,
                      contentPadding: const EdgeInsets.all(10),
                      labelText: 'Confirm Password',
                      hintText: 'Enter your password',
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstant
                        .black9007f, // Set your desired button color here
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15), // Set your desired border radius here
                    ),
                  ),
                  onPressed: () {
                    if (_signUpFormKey.currentState!.validate()) {
                      // Form is valid, perform Sign In logic here
                      String email = _emailController.text;
                      String password = _passwordController.text;

                      // Your sign in logic goes here...
                      Get.to(() => HomeScreen());
                    }
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyles.txtPoppinsMedium14whitef5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
