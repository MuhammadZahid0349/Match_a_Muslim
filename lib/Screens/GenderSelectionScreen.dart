import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Controllers/Maincontrollers.dart';
import 'package:dating_app/HomeMenu/MainHomeScreen.dart';
import 'package:dating_app/Models/Service.dart';
import 'package:dating_app/Screens/ProfileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class GenderSelectionScreen extends StatelessWidget {
  GenderSelectionScreen({super.key});

  String man = "man";
  String women = "women";

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
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

            // Container(height: 232, child: Image.asset("assets/images/GStop.png")),
            Text(
              "Select Your Gender",
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700,
                  fontSize: 32.sp),
            ),
            20.heightBox,
            GetBuilder<MainController>(builder: (controller) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.isgender(women);
                    },
                    child: Container(
                        height: 143.h,
                        width: 138.w,
                        decoration: BoxDecoration(
                          color: controller.check == women
                              ? ColorConstants.primaryDarkColor
                              : ColorConstants.SecondaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/VectorF.png"),
                            Text(
                              "${women}",
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.sp),
                            )
                          ],
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.isgender(man);
                      // Get.appUpdate();
                      // controller.check = ;
                    },
                    child: Container(
                        height: 143,
                        width: 138,
                        decoration: BoxDecoration(
                          color: controller.check == man
                              ? ColorConstants.primaryDarkColor
                              : ColorConstants.SecondaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/VectorM.png"),
                            Text(
                              "${man}",
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.sp),
                            )
                          ],
                        )),
                  ),
                ],
              );
            }),
            ///////////////
            10.heightBox,
            Image.asset("assets/images/mainlogo.png"),
            Container(
              height: 53.h,
              width: 264.w,
              child: ElevatedButton(
                onPressed: () {
                  if (controller.check == "man" ||
                      controller.check == "women") {
                    firestore_update("user", currentUserData.uid,
                        {"gender": controller.check});
                    Get.to(() => ProfileCreationScreen());
                  } else {
                    Get.snackbar("Please select your gender", "");
                  }
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
      ),
    );
  }
}
