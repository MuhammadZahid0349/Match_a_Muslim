import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class MyProfileM extends StatelessWidget {
  MyProfileM({super.key});

  bool isSwitched = false;

  // @override
  // void initState() {

  //   super.initState();
  //   if(switchData.read('isSwitched') != null)
  //     {
  //       setState(() {
  //         isSwitched = switchData.read('isSwitched');
  //       });
  //     }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.w),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/mainlogo.png",
                      height: 58.h,
                    ),
                    // 50.w.widthBox,
                    "Ibraheem"
                        .text
                        .fontWeight(FontWeight.w700)
                        .size(24.sp)
                        .make(),
                    "#42".text.fontWeight(FontWeight.w700).size(24.sp).make(),
                  ]),
            ),
          ),
          30.h.heightBox,
          //////////////////
          Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Center(
                  child: Container(
                    height: 148.h,
                    width: 174.w,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      color: ColorConstants.SecondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                    ),
                    child: Icon(
                      Icons.person,
                      size: 100,
                      color: ColorConstants.primaryDarkColor,
                    ),
                  ),
                ),
              ),
              // 10.widthBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: "Edit"
                      .text
                      .color(ColorConstants.primaryDarkColor)
                      .fontWeight(FontWeight.w700)
                      .size(24.sp)
                      .make(),
                ),
              ),
            ],
          ),
          /////////////////////
          20.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GuestsmallContainer(),
              GuestsmallContainer(),
            ],
          ),
          10.h.heightBox,
          Container(
            height: 67.h,
            width: 217.w,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black),
              color: ColorConstants.SecondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(21)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.cake,
                    color: ColorConstants.primaryDarkColor,
                  ),
                  Container(
                    height: Get.height,
                    width: 1,
                    color: Colors.black,
                  ),
                  "Engineer"
                      .text
                      .size(24.sp)
                      .color(ColorConstants.primaryDarkColor)
                      .fontWeight(FontWeight.w700)
                      .make()
                ],
              ),
            ),
          ),
          10.h.heightBox,
          Container(
            height: 67.h,
            width: 217.w,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black),
              color: ColorConstants.SecondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.location_on,
                    color: ColorConstants.primaryDarkColor,
                  ),
                  Container(
                    height: Get.height,
                    width: 1,
                    color: Colors.black,
                  ),
                  "Manchester"
                      .text
                      .size(24.sp)
                      .color(ColorConstants.primaryDarkColor)
                      .fontWeight(FontWeight.w700)
                      .make(),
                ],
              ),
            ),
          ),
          10.h.heightBox,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.w),
            child: Container(
              height: 40.h,
              width: 369.w,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                color: ColorConstants.SecondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 6.w, horizontal: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Notify me of future events"
                        .text
                        .size(14.sp)
                        .color(Colors.black)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    Container(
                      height: 22.h,
                      width: 39.6.w,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.5, color: Colors.black),
                        color: ColorConstants.primaryDarkColor,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Switch(
                        activeColor: ColorConstants.primaryDarkColor,
                        value: isSwitched,
                        onChanged: (value) {
                          print("VALUE : $value");
                          // setState(() {
                          //   status = value;
                          // });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Container(
              height: 40.h,
              width: 369.w,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                color: ColorConstants.SecondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Logout"
                        .text
                        .size(14.sp)
                        .color(Colors.black)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    Icon(
                      Icons.exit_to_app_rounded,
                      // size: 30,
                      color: ColorConstants.primaryDarkColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          118.h.heightBox,
        ]),
      ),
    );
  }

  Container GuestsmallContainer() {
    return Container(
      height: 67.h,
      width: 116.w,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
        color: ColorConstants.SecondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.cake,
              color: ColorConstants.primaryDarkColor,
            ),
            Container(
              height: Get.height,
              width: 1,
              color: Colors.black,
            ),
            "22"
                .text
                .size(24)
                .color(ColorConstants.primaryDarkColor)
                .fontWeight(FontWeight.w700)
                .make()
          ],
        ),
      ),
    );
  }
}
