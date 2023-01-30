import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Controllers/Maincontrollers.dart';
import 'package:dating_app/Models/Service.dart';
import 'package:dating_app/Screens/GuestnumberSelection.dart';
import 'package:dating_app/Widgets/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'EventSelectionScreen.dart';

class TableNumSelection extends StatelessWidget {
  TableNumSelection({super.key});

  String Num1 = "1";
  String Num2 = "2";
  String Num3 = "3";
  String Num4 = "4";
  String Num5 = "5";
  String Num6 = "6";
  String Num7 = "7";
  String Num8 = "8";
  String Num9 = "9";
  String Num10 = "10";
  String Num11 = "11";
  String Num12 = "12";
  List l = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            width: Get.width,
            height: 200.h,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 8.h),
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
                SizedBox(
                  width: Get.width / 5,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/mainlogo.png",
                    height: 90.h,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/newE.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Text(
            "What's Your Table Number?",
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
                fontSize: 36.sp),
          ),
          // Text(
          //   "Number?",
          //   style: TextStyle(
          //       color: Colors.black,
          //       fontWeight: FontWeight.w700,
          //       decoration: TextDecoration.none,
          //       fontSize: 36.sp),
          // ),
          25.heightBox,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: GetBuilder<MainController>(builder: (controller) {
              return Column(
                children: [
                  GridView.count(
                    physics: ScrollPhysics(),
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    shrinkWrap: true,
                    children: List.generate(
                      12,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              controller.isSelectNum("${index + 1}");
                            },
                            child: Container(
                                height: 53.h,
                                width: 69.w,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  color: controller.number == index + 1
                                      ? ColorConstants.primaryDarkColor
                                      : ColorConstants.textFormBackGColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Center(
                                    child: "${index + 1}"
                                        .text
                                        .black
                                        .bold
                                        .size(32)
                                        .make())),
                          ),
                        );
                      },
                    ),
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.isSelectNum(Num1);
                  //       },
                  //       child: Container(
                  //           height: 53.h,
                  //           width: 69.w,
                  //           decoration: BoxDecoration(
                  //             border: Border.all(width: 1, color: Colors.black),
                  //             color: controller.Number == Num1
                  //                 ? ColorConstants.primaryDarkColor
                  //                 : ColorConstants.textFormBackGColor,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(15)),
                  //           ),
                  //           child: Center(
                  //               child:
                  //                   "${l[0]}".text.black.bold.size(32).make())),
                  //     ),
                  //     ///////////////////////////////
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.isSelectNum(Num2);
                  //       },
                  //       child: Container(
                  //           height: 53.h,
                  //           width: 69.w,
                  //           decoration: BoxDecoration(
                  //             border: Border.all(width: 1, color: Colors.black),
                  //             color: controller.Number == Num2
                  //                 ? ColorConstants.primaryDarkColor
                  //                 : ColorConstants.textFormBackGColor,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(15)),
                  //           ),
                  //           child: Center(
                  //               child:
                  //                   "${l[1]}".text.black.bold.size(32).make())),
                  //     ),
                  //     //////////////////////////////
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.isSelectNum(Num3);
                  //       },
                  //       child: Container(
                  //           height: 53.h,
                  //           width: 69.w,
                  //           decoration: BoxDecoration(
                  //             border: Border.all(width: 1, color: Colors.black),
                  //             color: controller.Number == Num3
                  //                 ? ColorConstants.primaryDarkColor
                  //                 : ColorConstants.textFormBackGColor,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(15)),
                  //           ),
                  //           child: Center(
                  //               child:
                  //                   "${l[2]}".text.black.bold.size(32).make())),
                  //     ),
                  //     /////////////////////////
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.isSelectNum(Num4);
                  //       },
                  //       child: Container(
                  //           height: 53.h,
                  //           width: 69.w,
                  //           decoration: BoxDecoration(
                  //             border: Border.all(width: 1, color: Colors.black),
                  //             color: controller.Number == Num4
                  //                 ? ColorConstants.primaryDarkColor
                  //                 : ColorConstants.textFormBackGColor,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(15)),
                  //           ),
                  //           child: Center(
                  //               child:
                  //                   "${l[3]}".text.black.bold.size(32).make())),
                  //     ),
                  //   ],
                  // ),

                  // 10.heightBox,

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.isSelectNum(Num5);
                  //       },
                  //       child: Container(
                  //           height: 53.h,
                  //           width: 69.w,
                  //           decoration: BoxDecoration(
                  //             border: Border.all(width: 1, color: Colors.black),
                  //             color: controller.Number == Num5
                  //                 ? ColorConstants.primaryDarkColor
                  //                 : ColorConstants.textFormBackGColor,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(15)),
                  //           ),
                  //           child: Center(
                  //               child:
                  //                   "${l[4]}".text.black.bold.size(32).make())),
                  //     ),
                  //     ///////////////////////////////
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.isSelectNum(Num6);
                  //       },
                  //       child: Container(
                  //           height: 53.h,
                  //           width: 69.w,
                  //           decoration: BoxDecoration(
                  //             border: Border.all(width: 1, color: Colors.black),
                  //             color: controller.Number == Num6
                  //                 ? ColorConstants.primaryDarkColor
                  //                 : ColorConstants.textFormBackGColor,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(15)),
                  //           ),
                  //           child: Center(
                  //               child:
                  //                   "${l[5]}".text.black.bold.size(32).make())),
                  //     ),
                  //     //////////////////////////////
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.isSelectNum(Num7);
                  //       },
                  //       child: Container(
                  //           height: 53.h,
                  //           width: 69.w,
                  //           decoration: BoxDecoration(
                  //             border: Border.all(width: 1, color: Colors.black),
                  //             color: controller.Number == Num7
                  //                 ? ColorConstants.primaryDarkColor
                  //                 : ColorConstants.textFormBackGColor,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(15)),
                  //           ),
                  //           child: Center(
                  //               child:
                  //                   "${l[6]}".text.black.bold.size(32).make())),
                  //     ),
                  //     /////////////////////////
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.isSelectNum(Num8);
                  //       },
                  //       child: Container(
                  //           height: 53.h,
                  //           width: 69.w,
                  //           decoration: BoxDecoration(
                  //             border: Border.all(width: 1, color: Colors.black),
                  //             color: controller.Number == Num8
                  //                 ? ColorConstants.primaryDarkColor
                  //                 : ColorConstants.textFormBackGColor,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(15)),
                  //           ),
                  //           child: Center(
                  //               child:
                  //                   "${l[7]}".text.black.bold.size(32).make())),
                  //     ),
                  //   ],
                  // ),

                  // TableCountNumber("5", "6", "7", "8"),
                  // 10.heightBox,

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.isSelectNum(Num9);
                  //       },
                  //       child: Container(
                  //           height: 53.h,
                  //           width: 69.w,
                  //           decoration: BoxDecoration(
                  //             border: Border.all(width: 1, color: Colors.black),
                  //             color: controller.Number == Num9
                  //                 ? ColorConstants.primaryDarkColor
                  //                 : ColorConstants.textFormBackGColor,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(15)),
                  //           ),
                  //           child: Center(
                  //               child:
                  //                   "${l[8]}".text.black.bold.size(32).make())),
                  //     ),
                  //     ///////////////////////////////
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.isSelectNum(Num10);
                  //       },
                  //       child: Container(
                  //           height: 53.h,
                  //           width: 69.w,
                  //           decoration: BoxDecoration(
                  //             border: Border.all(width: 1, color: Colors.black),
                  //             color: controller.Number == Num10
                  //                 ? ColorConstants.primaryDarkColor
                  //                 : ColorConstants.textFormBackGColor,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(15)),
                  //           ),
                  //           child: Center(
                  //               child:
                  //                   "${l[9]}".text.black.bold.size(32).make())),
                  //     ),
                  //     //////////////////////////////
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.isSelectNum(Num11);
                  //       },
                  //       child: Container(
                  //           height: 53.h,
                  //           width: 69.w,
                  //           decoration: BoxDecoration(
                  //             border: Border.all(width: 1, color: Colors.black),
                  //             color: controller.Number == Num11
                  //                 ? ColorConstants.primaryDarkColor
                  //                 : ColorConstants.textFormBackGColor,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(15)),
                  //           ),
                  //           child: Center(
                  //               child: "${l[10]}"
                  //                   .text
                  //                   .black
                  //                   .bold
                  //                   .size(32)
                  //                   .make())),
                  //     ),
                  //     /////////////////////////
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.isSelectNum(Num12);
                  //       },
                  //       child: Container(
                  //           height: 53.h,
                  //           width: 69.w,
                  //           decoration: BoxDecoration(
                  //             border: Border.all(width: 1, color: Colors.black),
                  //             color: controller.Number == Num12
                  //                 ? ColorConstants.primaryDarkColor
                  //                 : ColorConstants.textFormBackGColor,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(15)),
                  //           ),
                  //           child: Center(
                  //               child: "${l[11]}"
                  //                   .text
                  //                   .black
                  //                   .bold
                  //                   .size(32)
                  //                   .make())),
                  //     ),
                  //   ],
                  // ),

                  // TableCountNumber("9", "10", "11", "12"),
                  50.heightBox,
                  Container(
                    height: 53.h,
                    width: 264.w,
                    child: ElevatedButton(
                      onPressed: () {
                        // firestore_update("user", currentUserData.uid,
                        //     {"tableNumber": controller.Number});
                        Get.to(() => GuestNumberSelection());
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                            fontSize: 24.sp),
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
                ],
              );
            }),
          ),
          Container(
            width: Get.width,
            // margin: EdgeInsets.only(top: 20),
            child: Image(
              image: AssetImage('assets/images/GSbg.PNG'),
              // fit: BoxFit.,
              height: 254.h,
              fit: BoxFit.fitHeight,
            ),
          )
        ]),
      ),
    );
  }

  // Row TableCountNumber(var Num1, Num2, Num3, Num4) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       GestureDetector(
  //         onTap: () {},
  //         child: Container(
  //             height: 53.h,
  //             width: 69.w,
  //             decoration: BoxDecoration(
  //               border: Border.all(width: 1, color: Colors.black),
  //               color: ColorConstants.textFormBackGColor,
  //               borderRadius: BorderRadius.all(Radius.circular(15)),
  //             ),
  //             child: Center(child: "$Num1".text.black.bold.size(32).make())),
  //       ),
  //       ///////////////////////////////
  //       GestureDetector(
  //         onTap: () {},
  //         child: Container(
  //             height: 53.h,
  //             width: 69.w,
  //             decoration: BoxDecoration(
  //               border: Border.all(width: 1, color: Colors.black),
  //               color: ColorConstants.textFormBackGColor,
  //               borderRadius: BorderRadius.all(Radius.circular(15)),
  //             ),
  //             child: Center(child: "$Num2".text.black.bold.size(32).make())),
  //       ),
  //       //////////////////////////////
  //       GestureDetector(
  //         onTap: () {},
  //         child: Container(
  //             height: 53.h,
  //             width: 69.w,
  //             decoration: BoxDecoration(
  //               border: Border.all(width: 1, color: Colors.black),
  //               color: ColorConstants.textFormBackGColor,
  //               borderRadius: BorderRadius.all(Radius.circular(15)),
  //             ),
  //             child: Center(child: "$Num3".text.black.bold.size(32).make())),
  //       ),
  //       /////////////////////////
  //       GestureDetector(
  //         onTap: () {},
  //         child: Container(
  //             height: 53.h,
  //             width: 69.w,
  //             decoration: BoxDecoration(
  //               border: Border.all(width: 1, color: Colors.black),
  //               color: ColorConstants.textFormBackGColor,
  //               borderRadius: BorderRadius.all(Radius.circular(15)),
  //             ),
  //             child: Center(child: "$Num4".text.black.bold.size(32).make())),
  //       ),
  //     ],
  //   );
  // }
}
