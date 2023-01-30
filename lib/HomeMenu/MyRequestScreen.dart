import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/HomeMenu/GuestProfileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class MyRequestScreen extends StatelessWidget {
  const MyRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 98.h,
            decoration: BoxDecoration(
              color: ColorConstants.primaryDarkColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.w),
              child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Image.asset(
                  "assets/images/mainlogo.png",
                  height: 58.h,
                ),
                50.w.widthBox,
                "My Request"
                    .text
                    .fontWeight(FontWeight.w700)
                    .size(24.sp)
                    .make(),
                10.heightBox,
              ]),
            ),
          ),

          10.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              "Guest No."
                  .text
                  .size(13.sp)
                  .color(ColorConstants.GuesttxtColor)
                  .fontWeight(FontWeight.w700)
                  .make(),
              15.w.widthBox
            ],
          ),
          10.h.heightBox,

          ///////////////////////

          Builder(builder: (context) {
            return GestureDetector(
              onTap: () {
                Get.to(() => GuestProfileScreen());
              },
              child: Container(
                height: 62.h,
                width: 335.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  color: ColorConstants.textFormBackGColor,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 35,
                        color: ColorConstants.primaryDarkColor,
                      ),
                      10.w.widthBox,
                      "Ibraheem"
                          .text
                          .size(24.sp)
                          .fontWeight(FontWeight.w500)
                          .black
                          .make(),
                      110.w.widthBox,
                      "#42"
                          .text
                          .size(24.sp)
                          .fontWeight(FontWeight.w500)
                          .black
                          .make(),
                    ],
                  ),
                ),
              ),
            );
          }),

          43.h.heightBox,
          // _myrequstPersonC(),
          // 40.h.heightBox,
          ////////////////////
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 53.h,
                width: 264.w,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(GuestProfileScreen());
                  },
                  child: Text(
                    "Add Another Request",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2, color: Colors.black),
                    primary: ColorConstants.primaryDarkColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _myrequstPersonC() {
    return Container(
      height: 62.h,
      width: 335.w,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black),
        color: ColorConstants.textFormBackGColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              Icons.person,
              size: 35,
              color: ColorConstants.primaryDarkColor,
            ),
            10.w.widthBox,
            "Ibraheem"
                .text
                .size(24.sp)
                .fontWeight(FontWeight.w500)
                .black
                .make(),
            110.w.widthBox,
            "#42".text.size(24.sp).fontWeight(FontWeight.w500).black.make(),
          ],
        ),
      ),
    );
  }
}
