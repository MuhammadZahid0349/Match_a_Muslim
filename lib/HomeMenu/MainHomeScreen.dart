import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Controllers/Maincontrollers.dart';
import 'package:dating_app/HomeMenu/ChatScreen.dart';
import 'package:dating_app/HomeMenu/MainSearchScreen.dart';
import 'package:dating_app/HomeMenu/MyProfileScreen.dart';
import 'package:dating_app/HomeMenu/MyRequestScreen.dart';
import 'package:dating_app/HomeMenu/HomePageM.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});
  // var controller = Get.find<MainController>();

  var controller = Get.put(MainController());

  // int _selectIndex = 0;
  // ignore: prefer_final_fields

  @override
  Widget build(BuildContext context) {
    // var controller = Get.put(MainController());
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
          ///////////////////////////////////////////////////
          body: controller.page[controller.index],
          
          bottomNavigationBar: 
          
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
              ),
              child: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: "",
                    icon: GestureDetector(
                        onTap: () {
                          controller.pages(0);
                          controller.isColorActive.value != false;
                        },
                        child: Container(
                          child: Image.asset(
                            "assets/images/1.png",
                            color: controller.isColorActive == true
                                ? Colors.grey
                                : null,
                          ),
                        )
                        //  Icon(
                        //  Image.asset(name)
                        //   // color: Color(0xff08296c),
                        //   color: ColorConstants.primaryDarkColor,
                        // ),
                        ),
                    // label: 'DashBoard',
                  ),
                  BottomNavigationBarItem(
                    label: "",
                    icon: GestureDetector(
                      onTap: () {
                        controller.pages(1);
                        // controller.isColorActive.value != true;
                      },
                      child: Image.asset(
                        "assets/images/2.png",
                        // color: controller.isColorActive == false ? null : Colors.grey,
                      ),
                    ),
                    // label: 'Setting',
                  ),
                  BottomNavigationBarItem(
                    label: "",
                    icon: GestureDetector(
                      onTap: () {
                        controller.pages(2);
                      },
                      child: Image.asset("assets/images/3.png"),
                    ),
                    // label: 'Setting',
                  ),
                  BottomNavigationBarItem(
                    label: "",
                    icon: GestureDetector(
                      onTap: () {
                        controller.pages(3);
                      },
                      child: Image.asset("assets/images/4.png"),
                    ),
                    // label: 'Setting',
                  ),
                  /////////////////////////////////////
                  BottomNavigationBarItem(
                    label: "",
                    icon: GestureDetector(
                      onTap: () {
                        controller.pages(4);
                      },
                      child: Image.asset("assets/images/5.png"),
                    ),
                    // label: 'My Profile',
                  ),
                  ///////////////////////////////////
                ],
                currentIndex: controller.index,
                selectedItemColor: ColorConstants.textFormBackGColor,
                // onTap: Get.find(),
              ),
            ),
          ));
    
    
    });
  }
}
