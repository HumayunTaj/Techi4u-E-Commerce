import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../utils/app-constants.dart';

import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'sign-up-page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppConstants.appSecondaryColor,
            centerTitle: true,
            title: Text(
              'Sign In',
              style: TextStyle(
                color: AppConstants.appTextColor,
              ),
            ),
          ),
          body: Container(
            child: Column(
              children: [
                isKeyboardVisible
                    ? SizedBox.shrink()
                    : Column(
                        children: [
                          Container(
                            color: AppConstants.appSecondaryColor,
                            child: Lottie.asset(
                              'assets/images/s2.json',
                            ),
                          ),
                        ],
                      ),
                SizedBox(
                  height: Get.height / 20,
                ),

                //email textfield
                Container(
                  width: Get.width,
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: TextFormField(
                    cursorColor: AppConstants.appSecondaryColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(
                        Icons.email,
                        color: AppConstants.appSecondaryColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                //password textfield
                Container(
                  width: Get.width,
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: TextFormField(
                    cursorColor: AppConstants.appSecondaryColor,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: AppConstants.appSecondaryColor,
                      ),
                      prefixIcon: Icon(
                        Icons.password,
                        color: AppConstants.appSecondaryColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                //forgot password
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppConstants.appSecondaryColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                //sign-in button
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width / 1.2,
                    height: Get.height / 12,
                    decoration: BoxDecoration(
                        color: AppConstants.appSecondaryColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      'Sign-In',
                      style: TextStyle(
                          fontSize: 20,
                          color: AppConstants.appTextColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // dont have account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                          color: AppConstants.appSecondaryColor, fontSize: 16),
                    ),
                    SizedBox(width: 6),
                    InkWell(
                      onTap: () {
                        Get.to(
                          () => SignUpPage(),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppConstants.appSecondaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
