import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Constant/TextFormField.dart';
import 'package:dating_app/Models/Service.dart';
import 'package:dating_app/Screens/InitialSearchScreen.dart';
import 'package:dating_app/Widgets/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class GuestNumberSelection extends StatelessWidget {
  GuestNumberSelection({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _guestController = TextEditingController();

  @override
  void dispose() {
    _guestController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: Get.width,
              height: 200.h,
              child: Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.w, horizontal: 8.h),
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
                      height: 100.h,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/newE.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "What's Your Guest Number?",
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
              padding: EdgeInsets.symmetric(horizontal: 27.h),
              child: Column(
                children: [
                  10.heightBox,
                  LabelFields("Guest Number", "*"),
                  4.heightBox,
                  textFormField(
                      IconName: null,
                      HintName: "e.g 46",
                      txtController: _guestController),
                  // Simpletextfield("e.g 46"),
                  // TableCountNumber(),
                  20.heightBox,
                  Container(
                    height: 53,
                    width: 264,
                    child: ElevatedButton(
                      onPressed: () {
                        // firestore_update("user", currentUserData.uid,
                        //     {"guestNumber": _guestController.text.trim()});
                        Get.to(() => InitialSearchScreen());
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

  Row LabelFields(var Name, Star) {
    return Row(
      children: [
        "\t\t${Name}".text.color(ColorConstants.LabelColor).make(),
        "$Star".text.color(ColorConstants.primaryDarkColor).make(),
      ],
    );
  }

  TextFormField Simpletextfield(var hinttxtName) {
    return TextFormField(
        decoration: InputDecoration(
      // labelText: 'Email',
      filled: true,
      fillColor: ColorConstants.textFormBackGColor,
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
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ));
  }
}
