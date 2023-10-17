import 'package:flutter/material.dart';

import '../../utils/app-constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppConstants.appSecondaryColor,
        title: Text(
          AppConstants.appName,
          style: TextStyle(color: AppConstants.appTextColor),
        ),
      ),
    );
  }
}
