import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../utils/app-constants.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppConstants.appMainColor,
        title: Text(
          'Welcome to my App',
          style: TextStyle(color: AppConstants.appTextColor),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              alignment: Alignment.center,
              child: Lottie.asset('assets/images/s2.json'),
            ),
            Text(
              'Happy Shopping',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: Get.height / 12,
            ),
            //google sign-in button
            InkWell(
              onTap: () {},
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    color: AppConstants.appSecondaryColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/g.png',
                      height: 28,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Google Sign-In',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppConstants.appTextColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),

            //Email sign-in button
            InkWell(
              onTap: () {},
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    color: AppConstants.appSecondaryColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Sign-in with Email',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppConstants.appTextColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
