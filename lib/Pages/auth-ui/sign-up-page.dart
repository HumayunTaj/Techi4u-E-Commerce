import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app-constants.dart';

import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'sign-in-page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppConstants.appSecondaryColor,
            centerTitle: true,
            title: Text(
              'Sign Up',
              style: TextStyle(
                color: AppConstants.appTextColor,
              ),
            ),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height / 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Welcome for Shopping',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppConstants.appSecondaryColor,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: Get.height / 20,
                  ),

                  //username textfield
                  Container(
                    width: Get.width,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: TextFormField(
                      cursorColor: AppConstants.appSecondaryColor,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        prefixIcon: Icon(
                          Icons.person,
                          color: AppConstants.appSecondaryColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  //phone textfield
                  Container(
                    width: Get.width,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: TextFormField(
                      cursorColor: AppConstants.appSecondaryColor,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Phone',
                        prefixIcon: Icon(
                          Icons.phone,
                          color: AppConstants.appSecondaryColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
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
                        'Create an account',
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
                        'Already have an account?',
                        style: TextStyle(
                            color: AppConstants.appSecondaryColor,
                            fontSize: 16),
                      ),
                      SizedBox(width: 6),
                      InkWell(
                        onTap: () {
                          Get.offAll(
                            () => SignInPage(),
                          );
                        },
                        child: Text(
                          'Login',
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
          ),
        );
      },
    );
  }
}
