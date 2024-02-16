import 'package:e_shop/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppCon.appSecColor,
        title: Text(
          "Welcome to my app",
          style: TextStyle(color: AppCon.appTextColor),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Lottie.asset('assets/images/splash-icon.json'),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                "Happy Shopping ",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppCon.appSecColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/final-google-logo.png',
                      height: Get.height / 12,
                      width: Get.width / 12,
                    ),
                    label: Text(
                      "Sign in with google",
                      style: TextStyle(color: AppCon.appTextColor),
                    )),
              ),
            ),
            SizedBox(
              height: Get.height / 50,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppCon.appSecColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.email,
                      color: AppCon.appTextColor,
                    ),
                    label: Text(
                      "Sign in with Email",
                      style: TextStyle(color: AppCon.appTextColor),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
