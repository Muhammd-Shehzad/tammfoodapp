import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/CustomWidget/custom_text_field.dart';
import 'package:foodapp/main.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Center(child: Text('Sign In')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Welcom to Tamang\nFood Services',
                style: TextStyle(color: Colors.black, fontSize: 30.sp),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Enter your Phone number or Email\naddresses for sign in.Enjoy your food:)',
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  text: 'Email Adress',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  text: 'Password',
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Forget Password?'),
              ),
              CustomButton(
                heigth: 50.h,
                width: 300.w,
                color: Color(0xFFEF9920),
                text: 'SIGN IN',
                onPressed: () {},
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Don\'t have account?'),

                  ),
                  
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
