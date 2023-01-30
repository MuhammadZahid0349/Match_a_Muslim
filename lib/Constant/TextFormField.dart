import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class textFormField extends StatelessWidget {
  var IconName;
  var HintName;
  var txtController;
  textFormField(
      {super.key,
      required this.IconName,
      required this.HintName,
      required this.txtController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: txtController,
        style: TextStyle(
            fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          suffixIcon: Icon(IconName),
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
          hintText: HintName,
          hintStyle: TextStyle(
              fontSize: 15.sp,
              color: ColorConstants.LabelColor,
              fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
  }
}
