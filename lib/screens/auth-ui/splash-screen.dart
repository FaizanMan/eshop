import 'dart:async';

import 'package:e_shop/screens/auth-ui/welcome-screen.dart';
// import 'package:e_shop/screens/user-panel/main-screen.dart';
import 'package:e_shop/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.offAll(() => WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCon.appSecColor,
      appBar: AppBar(
        backgroundColor: AppCon.appSecColor,
        elevation: 0,
      ),
      body: Container(
        child: Column(children: [
          Expanded(
            child: Container(
              width: Get.width,
              alignment: Alignment.center,
              child: Lottie.asset('assets/images/splash-icon.json'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            width: Get.width,
            alignment: Alignment.center,
            child: Text(
              AppCon.appPoweredBy,
              style: TextStyle(
                  color: AppCon.appTextColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
    );
  }
}
