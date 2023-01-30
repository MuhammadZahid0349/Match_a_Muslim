import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class MainSearchresults extends StatelessWidget {
  const MainSearchresults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
        20.h.heightBox,
        Center(
          child: Container(
              height: 41.h,
              width: 233.w,
              child: Simpletextfield("Search with name or guest no")),
        ),
        30.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 130.h,
                width: 129.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.black),
                  color: ColorConstants.textFormBackGColor,
                  borderRadius: BorderRadius.all(Radius.circular(21)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        15.heightBox,
                        "Aadil".text.size(16).black.make(),
                        "Age: 26".text.size(16).black.make(),
                        "Guest No: 72".text.size(16).black.make(),
                        "Teacher".text.size(16).black.make(),
                        "Table: 10".text.size(16).black.make(),
                      ]),
                )),
            ///////////////////////////////////////
            20.w.widthBox,
            Container(
                height: 130.h,
                width: 129.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.black),
                  color: ColorConstants.primaryDarkColor,
                  borderRadius: BorderRadius.all(Radius.circular(21)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        15.heightBox,
                        "Aadil".text.size(16).black.make(),
                        "Age: 26".text.size(16).black.make(),
                        "Guest No: 72".text.size(16).black.make(),
                        "Teacher".text.size(16).black.make(),
                        "Table: 10".text.size(16).black.make(),
                      ]),
                )),
          ],
        ),
        30.h.heightBox,
        ////////////////////////////////
        Center(
          child: Container(
            height: 53.h,
            width: 264.w,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Send Request",
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
        ),
      ]),
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
