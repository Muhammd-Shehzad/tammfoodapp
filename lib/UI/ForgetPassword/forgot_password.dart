import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/CustomWidget/custom_text_field.dart';
import 'package:foodapp/UI/ForgetPassword/reset_password.dart';
import 'package:get/get.dart';

class ForgotPasword extends StatefulWidget {
  const ForgotPasword({super.key});

  @override
  State<ForgotPasword> createState() => _ForgotPaswordState();
}

class _ForgotPaswordState extends State<ForgotPasword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios)),
        title: const Center(child: Text('Forgot Password')),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.black, fontSize: 30.sp),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Enter your email and address and we will\nsend your a reset instruction.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              text: 'Email Adress',
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomButton(
            heigth: 50.h,
            width: 330.w,
            color: const Color(0xFFEF9920),
            text: 'RESET PASSWORD',
            onPressed: () {
              Get.to(ResetPassword());
            },
          ),
        ],
      ),
    );
  }
}
