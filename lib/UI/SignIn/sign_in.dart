import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/CustomWidget/custom_text_field.dart';
import 'package:foodapp/UI/ForgetPassword/forgot_password.dart';
import 'package:foodapp/UI/SignUp/create_screen.dart';
import 'package:get/get.dart';

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
        leading: const Icon(Icons.arrow_back_ios),
        title: const Center(child: Text('Sign In')),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w300),
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
                  icon: Icon(
                    Icons.check,
                    color: Colors.orange,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  text: 'Password',
                  icon: Icon(Icons.visibility),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextButton(
                onPressed: () {
                  Get.to(ForgotPasword());
                },
                child: const Text('Forget Password?'),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomButton(
                heigth: 50.h,
                width: 330.w,
                color: const Color(0xFFEF9920),
                text: 'SIGN IN',
                onPressed: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Don\'t have account?'),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(CreateScreen());
                    },
                    child: Text(
                      'Create a new account',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
              Text(
                'Or',
                style: TextStyle(color: Colors.black, fontSize: 20.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF395998),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/f.png',
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'CONNECT WITH FACEBOOK',
                        style: TextStyle(color: Colors.white, fontSize: 18.sp),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/g.png'),
                          ),
                        ),
                      ),
                      Text(
                        'CONNECT WITH GOOGLE',
                        style: TextStyle(color: Colors.white, fontSize: 18.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
