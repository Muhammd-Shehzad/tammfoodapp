import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/CustomWidget/custom_text_field.dart';

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
              SizedBox(
                height: 10.h,
              ),
              TextButton(
                onPressed: () {},
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
                    onPressed: () {},
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
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF395998), // Facebook Blue
                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Add your Facebook login logic here
                },
                icon: Icon(Icons.facebook, color: Colors.white),
                label: Text(
                  "CONNECT WITH FACEBOOK",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF395998), // Facebook Blue
                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Add your Facebook login logic here
                },
                icon: Icon(Icons.facebook, color: Colors.white),
                label: Text(
                  "CONNECT WITH FACEBOOK",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
