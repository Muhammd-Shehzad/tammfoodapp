import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/center_text.dart';
import 'package:foodapp/CustomWidget/connect_button_for_sign_in.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/CustomWidget/custom_text_field.dart';
import 'package:foodapp/UI/Phone/phone.dart';
import 'package:get/get.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
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
          'Sign Up',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w200),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Enter your  Email,Name and Password\nfor sign up.',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300),
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: InkWell(
                          onTap: () {
                            // Add your navigation or action here
                            print("Already have an account tapped");
                          },
                          child: Text(
                            '   Already have Account?',
                            style: TextStyle(
                                color: Colors.orange, fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomTextField(
                labeltext: 'Name',
                hitext: 'Enter your Name',
                icon: Icon(Icons.check),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomTextField(
                labeltext: 'Email Address',
                hitext: 'Enter your Email Address',
                icon: Icon(Icons.check),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomTextField(
                labeltext: 'Password',
                hitext: 'Enter your Password',
                icon: Icon(Icons.visibility),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: CustomButton(
                heigth: 50.h,
                width: 330.w,
                color: const Color(0xFFEF9920),
                text: 'SIGN UP',
                onPressed: () {
                  Get.to(Phone());
                },
              ),
            ),
            CenterText(
              text1:
                  'By Signing upyou are agree to our Terms\nCondation & Privacy Policy',
            ),
            Text(
              'Or',
              style: TextStyle(fontSize: 20.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            ConnectButtonForSignIN(
              btnColor: Color(0xFF395998),
              image: 'assets/f.png',
              text: 'CONNECT WITH FACEBOOK',
              onPressed: () {},
            ),
            SizedBox(
              height: 10.h,
            ),
            ConnectButtonForSignIN(
              btnColor: Colors.blue,
              image: 'assets/g.png',
              text: 'CONNECT WITH GOOGLE',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
