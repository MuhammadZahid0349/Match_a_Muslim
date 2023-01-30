import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Constant/TextFormField.dart';
import 'package:dating_app/Models/Service.dart';
import 'package:dating_app/Models/UserModels.dart';
import 'package:dating_app/Screens/CreateAccountScreen.dart';
import 'package:dating_app/Screens/GenderSelectionScreen.dart';
import 'package:dating_app/Widgets/Background.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  // @override
  // void dispose() {
  //   _emailController.dispose();
  //   _passwordController.dispose();
  // }

  signIn() async {
    if (_emailController.text == "" || _passwordController == "") {
      Get.snackbar("Please Fill this fields ", "");
    } else {
      try {
        EasyLoading.show();
        UserCredential credential = await fAuth.signInWithEmailAndPassword(
            email: _emailController.text.trim().toString(),
            password: _passwordController.text.trim().toString());
        UserModel newUser = UserModel(
          uid: credential.user!.uid,
          userPassword: _passwordController.text.trim().toString(),
          userEmail: _emailController.text.trim().toString(),
        );
        var document = await firestore_get(
          "user",
          credential.user!.uid,
        );
        UserModel userdata =
            UserModel.fromMap(document.data() as Map<String, dynamic>);
        currentUserData = userdata;
        Get.to(() => GenderSelectionScreen());

        EasyLoading.dismiss();
      } on FirebaseAuthException catch (e) {
        EasyLoading.dismiss();
        Get.snackbar("${e.message}", "");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundScreen(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            20.heightBox,
            Image.asset("assets/images/textimage.png"),
            20.h.heightBox,
            // 200.h.heightBox,
            Image.asset("assets/images/mainlogo.png"),
            Text(
              "Sign In",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                  fontSize: 20),
            ),
            15.heightBox,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      "\t\tEmail".text.color(ColorConstants.LabelColor).make(),
                      "*".text.color(ColorConstants.primaryDarkColor).make(),
                    ],
                  ),
                  4.heightBox,
                  textFormField(
                    HintName: "Email",
                    IconName: Icons.email,
                    txtController: _emailController,
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      "\t\tPassword"
                          .text
                          .color(ColorConstants.LabelColor)
                          .make(),
                      "*".text.color(ColorConstants.primaryDarkColor).make(),
                    ],
                  ),
                  4.heightBox,
                  textFormField(
                    HintName: "Password",
                    IconName: Icons.remove_red_eye,
                    txtController: _passwordController,
                  ),
                  20.heightBox,
                  Container(
                    height: 53,
                    width: 264,
                    child: ElevatedButton(
                      onPressed: () {
                        // Get.to(() => GenderSelectionScreen());
                        signIn();
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                            fontSize: 24),
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
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "Don't have an account?"
                          .text
                          .fontWeight(FontWeight.w500)
                          .make(),
                      GestureDetector(
                        onTap: () {
                          Get.to(CreateAccountScreen());
                        },
                        child: " Sign Up"
                            .text
                            .color(ColorConstants.primaryDarkColor)
                            .fontWeight(FontWeight.w500)
                            .make(),
                      ),
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
