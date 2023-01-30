import 'package:dating_app/Constant/TextFormField.dart';
import 'package:dating_app/HomeMenu/MainHomeScreen.dart';
import 'package:dating_app/HomeMenu/MainSearchResults.dart';
import 'package:dating_app/HomeMenu/MainSearchScreen.dart';
import 'package:dating_app/HomeMenu/MyRequestScreen.dart';
import 'package:dating_app/HomeMenu/TableSearchResults.dart';
import 'package:dating_app/Screens/AddRequestScreen.dart';
import 'package:dating_app/Screens/CreateAccountScreen.dart';
import 'package:dating_app/Screens/EventSelectionScreen.dart';
import 'package:dating_app/Screens/GenderSelectionScreen.dart';
import 'package:dating_app/Screens/GuestnumberSelection.dart';
import 'package:dating_app/Screens/InitialSearchScreen.dart';
import 'package:dating_app/Screens/ProfileScreen.dart';
import 'package:dating_app/Screens/SearchResutsScreen.dart';
import 'package:dating_app/Screens/SignInScreen.dart';
import 'package:dating_app/Screens/TableNumSelection.dart';
import 'package:dating_app/Splash%20Screen/SplashScreen.dart';
import 'package:dating_app/Widgets/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
// ...
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initilization =
      Firebase.initializeApp(); //firebase
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            builder: EasyLoading.init(),
            home: SplashScrren(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
