import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/HomeMenu/MainHomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AddRequestScreen extends StatelessWidget {
  const AddRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 390.w,
                height: 200.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/GStop.png",
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Search Results",
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                    10.heightBox,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: 130.h,
                            width: 129.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3,
                                  color: ColorConstants.primaryDarkColor),
                              color: ColorConstants.textFormBackGColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(21)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    15.heightBox,
                                    "Ibraheem"
                                        .text
                                        .color(ColorConstants.primaryDarkColor)
                                        .size(16)
                                        .make(),
                                    "Age: 26".text.size(16).black.make(),
                                    "Guest No: 72".text.size(16).black.make(),
                                    "Teacher".text.size(16).black.make(),
                                    "Table: 10".text.size(16).black.make(),
                                  ]),
                            )),
                        /////////////////////////
                        20.widthBox,
                        Container(
                            height: 130.h,
                            width: 129.w,
                            decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.black),
                              color: ColorConstants.primaryDarkColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(21)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    15.heightBox,
                                    "Ibraheem".text.size(16).black.make(),
                                    "Age: 26".text.size(16).black.make(),
                                    "Guest No: 72".text.size(16).black.make(),
                                    "Teacher".text.size(16).black.make(),
                                    "Table: 10".text.size(16).black.make(),
                                  ]),
                            )),
                      ],
                    ),
                    10.heightBox,
                    Center(child: Image.asset("assets/images/mainlogo.png")),
                    10.heightBox,
                    Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 53.h,
                          width: 264.w,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => MenuScreen());
                            },
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24),
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

                    ///////////////////////////
                  ],
                ),
              ),

              /////////////////////
              Container(
                width: Get.width,
                // margin: EdgeInsets.only(top: 20),
                child: Image(
                  image: AssetImage('assets/images/GSbg.PNG'),
                  // fit: BoxFit.,
                  height: 254.h,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ]),
      ),
    );
  }
}
