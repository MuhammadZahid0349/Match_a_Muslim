import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class TableSearchresults extends StatelessWidget {
  const TableSearchresults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('users')
                // .doc("9u4rsT7NkGSUXKFqY4MGFkHOWZR2")
                // .doc()
                .snapshots(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              var data = snapshot.data;
              return Column(children: [
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.w),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
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
                10.h.heightBox,

                Container(
                  height: 42.h,
                  width: 154.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: ColorConstants.primaryDarkColor),
                    color: ColorConstants.textFormBackGColor,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                    child: "Table #10"
                        .text
                        .size(24.sp)
                        .fontWeight(FontWeight.w500)
                        .black
                        .make(),
                  ),
                ),
                //////////////////////////////
                10.h.heightBox,

                ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (context, index) {
                      {
                        DocumentSnapshot users = snapshot.data.docs[index];
                        print(users);
                        return Container(
                          height: 48.h,
                          width: 292.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color: ColorConstants.primaryDarkColor),
                            color: ColorConstants.textFormBackGColor,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              "Aadil 25"
                                  .text
                                  .size(24.sp)
                                  .fontWeight(FontWeight.w500)
                                  .color(ColorConstants.primaryDarkColor)
                                  .make(),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "Guest No: 45".text.size(16.sp).make(),
                                  "Sales".text.size(16.sp).make(),
                                ],
                              )
                            ],
                          ),
                        );
                      }
                    }),
                // TableSearchContainer(),
                // 5.h.heightBox,
                // TableSearchContainer(),

                // 5.h.heightBox,
                // TableSearchContainer(),

                // 5.h.heightBox,
                // TableSearchContainer(),

                // 5.h.heightBox,
                // TableSearchContainer(),

                // 5.h.heightBox,
                // TableSearchContainer(),

                //////////////////////////////
                20.h.heightBox,
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
              ]);
            }));
  }

  Container TableSearchContainer() {
    return Container(
      height: 48.h,
      width: 292.w,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: ColorConstants.primaryDarkColor),
        color: ColorConstants.textFormBackGColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          "Aadil 25"
              .text
              .size(24.sp)
              .fontWeight(FontWeight.w500)
              .color(ColorConstants.primaryDarkColor)
              .make(),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Guest No: 45".text.size(16.sp).make(),
              "Sales".text.size(16.sp).make(),
            ],
          )
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
