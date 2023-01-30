import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                child:
                    Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.h.heightBox,
                  "If you would like to give us feedback on the event, or contact us for something else, please use the form on our website or email us:"
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .make(),
                  20.h.heightBox,
                  "https://matchamuslim.co.uk/contact/"
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .make(),
                  20.h.heightBox,
                  "info@matchamuslim.co.uk"
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .make(),
                  160.h.heightBox,
                  "If you need live assistance at an event, please use the button below and we will try our best to assist you. Although, we cannot guarantee someone will be available straight away"
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .make(),
                  20.h.heightBox,
                  Center(
                    child: Container(
                      height: 49.h,
                      width: 335.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Help",
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 24.sp),
                        ),
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 2, color: Colors.black),
                          primary: ColorConstants.primaryDarkColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
