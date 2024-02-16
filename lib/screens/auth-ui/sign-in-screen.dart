import 'package:e_shop/screens/auth-ui/sign-up-screen.dart';
import 'package:e_shop/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign in",style: TextStyle(color: AppCon.appTextColor),),
        backgroundColor: AppCon.appSecColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Column(
              children: [Lottie.asset('assets/images/splash-icon.json')],
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
                  keyboardType: TextInputType.visiblePassword,
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              alignment: Alignment.centerRight,
              child: Text(
                'Forget Password',
                style: TextStyle(
                    color: AppCon.appSecColor, fontWeight: FontWeight.bold),
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
            SizedBox(height: Get.height/20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account",
                    style: TextStyle(color: AppCon.appSecColor)),
                GestureDetector(
                   onTap: ()=> Get.offAll(()=>SignUpScreen()),
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
