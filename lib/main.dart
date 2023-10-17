import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techi4u_e_commerce/Pages/auth-ui/sign-in-page.dart';
import 'package:techi4u_e_commerce/Pages/auth-ui/sign-up-page.dart';
import 'Pages/auth-ui/splash-page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Techi4u E-Commerce',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignUpPage(),
    );
  }
}

//status class 8 start

// SHA keys
// name = techi4u-e-commerce


// keytool -genkeypair -v -keystore techi4u-e-commerce.keystore -keyalg RSA -keysize 2048 -validity 10000 -alias techi4u-e-commerce_alias



// keytool -list -v -keystore techi4u-e-commerce.keystore -alias techi4u-e-commerce_alias