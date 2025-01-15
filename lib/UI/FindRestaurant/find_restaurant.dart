import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/center_text.dart';

import 'package:foodapp/UI/Delivery/delevery_screen.dart';
import 'package:get/get.dart';

class FindRestaurant extends StatefulWidget {
  const FindRestaurant({super.key});

  @override
  State<FindRestaurant> createState() => _FindRestaurantState();
}

class _FindRestaurantState extends State<FindRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Find restaurants near you',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.sp,
                fontWeight: FontWeight.bold),
          ),
          CenterText(
            text1:
                'Please enter your location or allow  access to your location to find  restaurants near you.',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: InkWell(
              onTap: () {
                Get.to(DeleveryScreen());
              },
              child: Container(
                height: 50.h,
                width: 330.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFFEF9920), width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/location.png'),
                    Text(
                      'Use current location',
                      style:
                          TextStyle(color: Color(0xFFEF9920), fontSize: 19.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_on),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 10.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(onTap: () {}, child: Icon(Icons.close)),
                    ),
                  ),
                  hintText: 'Enter a new Address',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ],
      ),
    );
  }
}
