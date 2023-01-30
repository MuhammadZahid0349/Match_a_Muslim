import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BackgroundScreen extends StatelessWidget {
  var body;

  BackgroundScreen({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(),
        body: Stack(children: [
          Align(
            alignment: Alignment.topRight,
            child: (Image(
              image: AssetImage("assets/images/Accounttop1.png"),
              fit: BoxFit.fitWidth,
              width: Get.width,
            )),
          ), //w
          Align(
            alignment: Alignment.bottomCenter,
            child: (Image(
              image: AssetImage("assets/images/bottom2.png"),
              fit: BoxFit.fitWidth,
              width: Get.width,
            )),
          ), //want to fixed widget when keyboard will appear
          SafeArea(
            child: ScrollConfiguration(
                behavior: ScrollBehavior(),
                child: SingleChildScrollView(
                  //scrolling widget list
                  child: Container(
                    child: body,
                  ),
                )),
          )
        ]));

    //  Scaffold(
    //   resizeToAvoidBottomInset: true,
    //   backgroundColor: Colors.white,
    //   body: SingleChildScrollView(
    //     child: Stack(
    //       children: [
    //         Positioned(
    //           top: 100,
    //           child: Align(
    //             alignment: Alignment.topCenter,
    //             child: Image.asset(
    //               "assets/images/bg1.png",
    //               height: 282.h,
    //             ),
    //           ),
    //         ),

    //         // Align(
    //         //   alignment: Alignment.topCenter,
    //         //   child: Container(
    //         //     width: 390.w,

    //         //     decoration: BoxDecoration(
    //         //       image: DecorationImage(
    //         //         image: AssetImage(
    //         //           "assets/images/Accounttop1.png",
    //         //         ),
    //         //         fit: BoxFit.fitWidth,
    //         //       ),
    //         //     ),
    //         //     // child: body,
    //         //   ),
    //         // ),
    //         ScrollConfiguration(
    //             behavior: ScrollBehavior(),
    //             child: SingleChildScrollView(
    //               //scrolling widget list
    //               child: Container(
    //                 child: body,
    //               ),
    //             )),
    //         // Spacer(),
    //         Positioned(
    //           bottom: 0,
    //           child: Image.asset("assets/images/bottom2.png"),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
