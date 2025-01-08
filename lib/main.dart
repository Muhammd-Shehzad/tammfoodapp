import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/UI/SignIn/sign_in.dart';
import 'package:foodapp/UI/WelcomScreen/welcom_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) => const GetMaterialApp(
         debugShowCheckedModeBanner: false,
        home: WelcomScreen(),
        // SignIn()
      ),
    ),
  );
}
