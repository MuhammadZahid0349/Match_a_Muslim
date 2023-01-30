import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/HomeMenu/MainSearchScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class NoRequestScreen extends StatelessWidget {
  const NoRequestScreen({super.key});

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
          40.h.heightBox,
          Column(
            children: [
              "You dont hafcvasdad d".text.make(),
              40.h.heightBox,
              "You dont hafcvasdad d".text.make(),
              "You dont hafcvasdad d".text.make(),
            ],
          ),

          ////////////////////
          Center(
            child: GestureDetector(
              onTap: () {
                Get.to(MainSearchScreen());
              },
              child: Container(
                height: 53.h,
                width: 264.w,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Add a Request",
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
}
