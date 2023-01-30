import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class MainSearchScreen extends StatelessWidget {
  const MainSearchScreen({super.key});

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
                40.w.widthBox,
                Image.asset(
                  "assets/images/textimage.png",
                ),
              ]),
            ),
          ),
          40.h.heightBox,
          Text(
            "Find the person you'd like to speak to",
            style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w700,
                fontSize: 18.sp),
          ),
          30.h.heightBox,
          Center(
            child: Container(
                height: 41.h,
                width: 233.w,
                child: Simpletextfield("Search with name or guest no")),
          ),
          40.h.heightBox,
          Text(
            "Find someone by table number",
            style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w700,
                fontSize: 18.sp),
          ),
          30.h.heightBox,
          Center(
            child: Container(
                height: 41.h,
                width: 233.w,
                child: Simpletextfield("Search with table no")),
          ),

          ///////////////////
        ],
      ),
    );
  }

  TextFormField Simpletextfield(var hinttxtName) {
    return TextFormField(
        decoration: InputDecoration(
      // labelText: 'Email',
      filled: true,
      fillColor: ColorConstants.textFormBackGColor,
      prefixIcon: Icon(Icons.person_search),
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorConstants.primaryDarkColor, width: 3),
        borderRadius: BorderRadius.circular(15),
      ),
      ////////////////////////////////
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorConstants.primaryDarkColor, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      hintText: hinttxtName,
      hintStyle: TextStyle(fontSize: 12.sp),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ));
  }
}
