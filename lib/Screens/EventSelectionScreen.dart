import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Constant/TextFormField.dart';
import 'package:dating_app/Controllers/Maincontrollers.dart';
import 'package:dating_app/Screens/TableNumSelection.dart';
import 'package:dating_app/Widgets/Background.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class EventSelectionScreen extends StatelessWidget {
  EventSelectionScreen({super.key});

  String eventselect = "eventName";

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());

    return Scaffold(
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('events')
                .doc("bF5LoiNYBcQ8KSiStxlt")
                .snapshots(),
            builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              var data = snapshot.data;

              return SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     
                      Container(
                        width: Get.width,
                        height: 200.h,
                        child: 
                        
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.w, horizontal: 8.h),
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
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                     
                      Text(
                        "Select The Event",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            fontSize: 36.sp),
                      ),
                      20.heightBox,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.h),
                        child:
                            GetBuilder<MainController>(builder: (controller) {
                          return Column(
                            children: [
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data!['event'].length,
                                  itemBuilder: (context, index) {
                                    var eventdata = data!["event"][index];
                                    {
                                      return GestureDetector(
                                        onTap: () {
                                          controller.isselect(eventselect);
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.h),
                                          child: Container(
                                            height: 49.h,
                                            width: 335.w,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 3,
                                                  color: Colors.black),
                                              // color: controller.isselect(eventselect == "eventName")
                                              //     ? ColorConstants.primaryDarkColor
                                              //     : ColorConstants.textFormBackGColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 8.w,
                                                  horizontal: 8.h),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "${eventdata["name"]}",
                                                    style: TextStyle(
                                                        fontSize: 24.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "${eventdata["date"]}",
                                                    style: TextStyle(
                                                        fontSize: 24.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  }),
                              50.heightBox,
                              Container(
                                height: 53.h,
                                width: 264.w,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Get.to(() => TableNumSelection());
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
                                    side: BorderSide(
                                        width: 2, color: Colors.black),
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
              );
            }));
  }
}
