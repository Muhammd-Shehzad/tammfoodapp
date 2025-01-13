import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/center_text.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/UI/OTP/otp.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: () {}, child: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Login to Tamang Food\nService',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Get Started with Foodly',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.sp,
                fontWeight: FontWeight.bold),
          ),
          CenterText(
            text1:
                'Enter your Phone number to use foodly and enjoy your food :)',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: CountryCodePicker(
                  initialSelection: 'Pak',
                  favorite: ['+92', 'Pak'],
                  showCountryOnly: false,
                  flagWidth: 25,
                  showOnlyCountryWhenClosed: false,
                  alignLeft: false,
                ),
                labelText: 'Phone',
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                hintText: 'Enter your number',
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: CustomButton(
              heigth: 50.h,
              width: 330.w,
              color: const Color(0xFFEF9920),
              text: 'SIGN UP',
              onPressed: () {
                Get.to(OTP());
              },
            ),
          ),
        ],
      ),
    );
  }
}
