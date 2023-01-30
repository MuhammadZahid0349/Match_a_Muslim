import 'dart:async';

import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Screens/CreateAccountScreen.dart';
import 'package:dating_app/Widgets/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScrren extends StatefulWidget {
  const SplashScrren({super.key});

  @override
  State<SplashScrren> createState() => _SplashScrrenState();
}

class _SplashScrrenState extends State<SplashScrren> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => CreateAccountScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        "assets/images/Splash Screen.png",
        height: 844.h,
        width: 390.w,
        fit: BoxFit.fitWidth,
      )),
    );
  }
}
