import 'dart:io';

import 'package:dating_app/HomeMenu/ChatScreen.dart';
import 'package:dating_app/HomeMenu/MainSearchScreen.dart';
import 'package:dating_app/HomeMenu/MyProfileScreen.dart';
import 'package:dating_app/HomeMenu/MyRequestScreen.dart';
import 'package:dating_app/HomeMenu/HomePageM.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MainController extends GetxController {
//  late File selected;
//  PickedFile? img;
  var isColorActive = true.obs;

  @override
  List<Widget> page = <Widget>[
    HomeMenuScreen(),
    MyRequestScreen(),
    MainSearchScreen(),
    ChatScreen(),
    MyProfileM()
  ];

  var index = 0;
  pages(index1) {
    index = index1;
    refresh();
  }

  var check = "";
  isgender(gender) {
    check = gender;
    refresh();
  }

  var number = "";
  isSelectNum(num) {
    number = num;
    refresh();
  }

  var event = "";
  isselect(select) {
    event = select;
    refresh();
  }
}
