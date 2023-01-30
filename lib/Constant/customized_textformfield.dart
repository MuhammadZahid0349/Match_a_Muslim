import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomizedTextFormfield extends StatefulWidget {
  final TextEditingController myController;
  final String? hintText;
  final bool? isPassword;

  const CustomizedTextFormfield(
      {Key? key, required this.myController, this.hintText, this.isPassword})
      : super(key: key);

  @override
  State<CustomizedTextFormfield> createState() =>
      _CustomizedTextFormfieldState();
}

class _CustomizedTextFormfieldState extends State<CustomizedTextFormfield> {
  bool _isVisible = false;

  void _showPassword() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: TextFormField(
        style: TextStyle(
            fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.w500),
        keyboardType: widget.isPassword!
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
        enableSuggestions: widget.isPassword! ? false : true,
        obscureText: _isVisible ? false : widget.isPassword!,
        controller: widget.myController,
        validator: widget.isPassword!
            ? (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Password';
                }
                // } else if (value.length < 6) {
                //   return 'Password must be greater then 6';
                // }
                return null;
              }
            : (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Email';
                } else if (!value.contains('@')) {
                  return 'Please enter Valid Email';
                } else if (!value.contains('.com')) {
                  return 'Please enter Valid Email';
                }
                return null;
              },
        decoration: InputDecoration(
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
          // labelText: 'Email:',
          suffixIcon: widget.isPassword!
              ? IconButton(
                  icon: Icon(
                      _isVisible ? Icons.remove_red_eye : Icons.visibility_off),
                  onPressed: () => _showPassword(),
                )
              : null,
          hintText: widget.hintText,
          hintStyle: TextStyle(
              fontSize: 15.sp,
              color: ColorConstants.LabelColor,
              fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),

        ),
      ),
    );
  }
}
