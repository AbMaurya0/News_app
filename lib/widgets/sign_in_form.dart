import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/utils/color_constant.dart';
import 'package:news_app/utils/image_constant.dart';
import 'package:news_app/utils/text_styles.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final GlobalKey<FormState> _signInFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signInFormKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Let's Sign in to your account",
                  style: TextStyles.txtPoppinsSemiBold28black6007f,
                ),
                const SizedBox(
                  height: 10,
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
                  height: 30,
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
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.txtPoppinsMedium15black5007f,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
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
                      if (_signInFormKey.currentState!.validate()) {
                        // Form is valid, perform Sign In logic here
                        String email = _emailController.text;
                        String password = _passwordController.text;

                        // Your sign in logic goes here...
                        Get.to(() => HomeScreen());
                      }
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyles.txtPoppinsMedium14whitef5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Or Login with',
                  style: TextStyles.txtPoppinsRegular12gray400A1,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Image.asset(
                        ImageConstant.googlelogo,
                        height: 50,
                      ),
                    ),
                    InkWell(
                      child: Image.asset(
                        ImageConstant.facebooklogo,
                        height: 50,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
