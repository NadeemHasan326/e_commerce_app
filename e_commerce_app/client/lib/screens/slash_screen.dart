import 'package:client/constants/color_constant.dart';
import 'package:client/constants/image_constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstant.logoBig,height:200,width:200),
            const Text(
              "E Commerce",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
            ),
            const Text(
              "(Inspired by myntra)",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
