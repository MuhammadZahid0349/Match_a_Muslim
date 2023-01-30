import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/HomeMenu/MainHomeScreen.dart';
import 'package:dating_app/HomeMenu/HomePageM.dart';
import 'package:dating_app/Screens/SearchResutsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class InitialSearchScreen extends StatelessWidget {
  const InitialSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 390.w,
                height: 200.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/IS.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                        // color: Colors.black,
                      )),
                ),
              ),
              8.h.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.h),
                    child: Text(
                      "Find the person you'd like to speak to",
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp),
                    ),
                  ),
                  40.heightBox,

                  Center(
                    child: Container(
                        height: 41.h,
                        width: 233.w,
                        child: Simpletextfield("Search with name or guest no")),
                  ),
                  35.heightBox,
                  Center(child: Image.asset("assets/images/mainlogo.png")),
                  35.heightBox,

                  GestureDetector(
                    onTap: () {
                      Get.to(() => MenuScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        "Skip"
                            .text
                            .size(20.sp)
                            .fontWeight(FontWeight.w400)
                            .black
                            .make(),
                        Icon(
                          Icons.arrow_right_alt_rounded,
                          size: 30,
                        ),
                      ],
                    ),
                  )

                  ///////////////////////////
                ],
              ),

              /////////////////////
              Container(
                width: Get.width,
                // margin: EdgeInsets.only(top: 20),
                child: Image(
                  image: AssetImage('assets/images/GSbg.PNG'),
                  fit: BoxFit.fitWidth,
                ),
              )
            ]),
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
