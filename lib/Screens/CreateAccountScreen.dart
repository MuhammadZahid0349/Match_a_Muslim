import 'package:dating_app/Constant/ColorConstant.dart';
import 'package:dating_app/Constant/TextFormField.dart';
import 'package:dating_app/Models/Service.dart';
import 'package:dating_app/Models/UserModels.dart';
import 'package:dating_app/Screens/SignInScreen.dart';
import 'package:dating_app/Widgets/Background.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
  }

  //////////////////////////Sign Up + Registration /////////////
  registration() async {
    // FirebaseAuth auth = FirebaseAuth.instance;
    if (_emailController.text == "" || _passwordController == "") {
      Get.snackbar("Please Fill this fields ", "");
    } else {
      try {
        EasyLoading.show();
        UserCredential credential = await fAuth.createUserWithEmailAndPassword(
            email: _emailController.text.trim().toString(),
            password: _passwordController.text.trim().toString());
        UserModel newUser = UserModel(
          uid: credential.user!.uid,
          userPassword: _passwordController.text.trim().toString(),
          userEmail: _emailController.text.trim().toString(),
        );
        await firestore_set("user", credential.user!.uid, newUser.toMap());
        Get.to(() => SigninScreen());

        EasyLoading.dismiss();
      } on FirebaseAuthException catch (e) {
        EasyLoading.dismiss();
        Get.snackbar("${e.message}", "");
      }
    }
    // return user;
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
              "Create an Account",
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
                      onPressed: () async {
                        await registration();
                        // Get.to(() => SigninScreen());
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
                        primary: ColorConstants.textFormBackGColor,
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
                      "Already have an account?"
                          .text
                          .fontWeight(FontWeight.w500)
                          .make(),
                      GestureDetector(
                        onTap: () {
                          Get.to(SigninScreen());
                        },
                        child: " Sign in"
                            .text
                            .color(ColorConstants.primaryDarkColor)
                            .fontWeight(FontWeight.w500)
                            .make(),
                      ),
                    ],
                  ),
                  // 65.h.heightBox,
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
