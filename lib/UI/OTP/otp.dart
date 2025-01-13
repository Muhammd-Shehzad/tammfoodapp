import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/center_text.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/UI/FindRestaurant/find_restaurant.dart';
import 'package:foodapp/UI/SignUp/create_screen.dart';
import 'package:get/get.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Login to Foodly',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              'verify phone number',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold),
            ),
            CenterText(
              text1: 'Enter the 4-Digit code sent to you at\n03169727675 ',
            ),
            OtpTextField(
              margin: EdgeInsets.all(20),
              numberOfFields: 4,
              borderColor: Colors.black,
              showFieldAsBox: true,
              borderWidth: 3.0,
              fieldWidth: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: CustomButton(
                heigth: 50.h,
                width: 330.w,
                color: const Color(0xFFEF9920),
                text: 'CONTINUE',
                onPressed: () {
                  Get.to(FindRestaurant());
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Didn\'t recived?'),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(CreateScreen());
                  },
                  child: Text(
                    'Resend Again',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ],
            ),
            CenterText(
              text1:
                  'By Signing up you agree to our Terms condation & Privacy Policy',
            )
          ],
        ),
      ),
    );
  }
}
