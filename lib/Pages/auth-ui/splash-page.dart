import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../utils/app-constants.dart';
import 'WelcomePage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Get.offAll(
        () => WelcomePage(),
      );
    });
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.appSecondaryColor,
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: Get.width,
                child: LottieBuilder.asset(
                  'assets/images/s2.json',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text(
                AppConstants.appPoweredBy,
                style: TextStyle(
                    color: AppConstants.appTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
