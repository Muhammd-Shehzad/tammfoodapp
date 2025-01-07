import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:get/get.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
            padding: const EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Reset email sent',
                style: TextStyle(color: Colors.black, fontSize: 40.sp),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text:
                          'We have sent a instruction email to\nshezikhan@gmail.com.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w300),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Having problem?',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomButton(
            heigth: 50.h,
            width: 330.w,
            color: const Color(0xFFEF9920),
            text: 'SEND AGAIN',
            onPressed: () {
              Get.to(ResetPassword());
            },
          ),
          SizedBox(
            height: 60.h,
          ),
          Image.asset('assets/resetlogo.png')
        ],
      ),
    );
  }
}
