import 'package:e_shop/utils/app-constant.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppCon.appMainColor,
        title: Text(AppCon.appMainName),
        centerTitle: true,
      ),
    );
  }
}
