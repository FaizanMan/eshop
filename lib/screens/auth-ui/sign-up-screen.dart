import 'package:e_shop/screens/auth-ui/sign-in-screen.dart';
import 'package:e_shop/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(color: AppCon.appTextColor),
        ),
        backgroundColor: AppCon.appSecColor,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(children: [
            SizedBox(
              height: Get.height / 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Welcome to my app",
                style: TextStyle(
                    color: AppCon.appSecColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
            ),
            SizedBox(
              height: Get.height / 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppCon.appSecColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'UserName',
                    prefixIcon: Icon(Icons.person),
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppCon.appSecColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Phone',
                    prefixIcon: Icon(Icons.phone),
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppCon.appSecColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppCon.appSecColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility_off),
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 20,
            ),
            Material(
              child: Container(
                width: Get.width / 2,
                height: Get.height / 18,
                decoration: BoxDecoration(
                  color: AppCon.appSecColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(color: AppCon.appTextColor),
                    )),
              ),
            ),
            SizedBox(
              height: Get.height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                    style: TextStyle(color: AppCon.appSecColor)),
                GestureDetector(
                  onTap: ()=> Get.offAll(()=>SignInScreen()),
                  child: Text("Sign Up",
                      style: TextStyle(
                          color: AppCon.appSecColor, fontWeight: FontWeight.bold)),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
