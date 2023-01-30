import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Controllers/Maincontrollers.dart';
import 'package:dating_app/HomeMenu/ChatScreen.dart';
import 'package:dating_app/HomeMenu/MyRequestScreen.dart';
import 'package:dating_app/HomeMenu/TableSearchResults.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeMenuScreen extends StatelessWidget {
  const HomeMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller1 = Get.find<MainController>();
    return GetBuilder<MainController>(builder: (_) {
      return Scaffold(
          body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Column(
              children: [
                Image.asset("assets/images/logo.png"),
                Center(
                  child: Container(
                    height: 49.h,
                    width: 335.w,
                    child: ElevatedButton(
                      onPressed: () {
                        // Get.to(() => MyRequestScreen());
                        _.index = 1;
                        _.pages(_.index);
                        // print(controller.index);
                        // _.
                        // _.page[_.index];
                      },
                      child: Text(
                        "See My Requests",
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            fontSize: 24.sp),
                      ),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 2, color: Colors.black),
                        primary: ColorConstants.primaryDarkColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ),
                28.h.heightBox,
                Center(
                  child: Container(
                    height: 49.h,
                    width: 335.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => TableSearchresults());
                      },
                      child: Text(
                        "Send a Request",
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            fontSize: 24.sp),
                      ),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 2, color: Colors.black),
                        primary: ColorConstants.primaryDarkColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ),
                28.h.heightBox,
                Center(
                  child: Container(
                    height: 49.h,
                    width: 335.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => ChatScreen());
                      },
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            fontSize: 24.sp),
                      ),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 2, color: Colors.black),
                        primary: ColorConstants.primaryDarkColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ));
    });
  }

  // Center HomeScreenButtons(var textName) {
  //   return Center(
  //     child: Container(
  //       height: 49.h,
  //       width: 335.w,
  //       child: ElevatedButton(
  //         onPressed: () {
  //           Get.to(MyRequestScreen());
  //         },
  //         child: Text(
  //           "$textName",
  //           style: TextStyle(
  //               color: Colors.black,
  //               decoration: TextDecoration.none,
  //               fontWeight: FontWeight.w500,
  //               fontSize: 24.sp),
  //         ),
  //         style: ElevatedButton.styleFrom(
  //           side: BorderSide(width: 2, color: Colors.black),
  //           primary: ColorConstants.primaryDarkColor,
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(15.0),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
