import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/CustomWidget/custom_row.dart';
import 'package:foodapp/UI/WelcomScreen/page_view4.dart';
import 'package:get/get.dart';

class PageView3 extends StatelessWidget {
  const PageView3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomRow(),
              SizedBox(
                height: 20.h,
              ),
              Image.asset('assets/ils3.png'),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Free Delivery offers',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Free delivery for new customers via Apple Play and others payment methods.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              SizedBox(
                height: 20.w,
              ),
              CustomButton(
                heigth: 50.h,
                width: 300.w,
                color: const Color(0xFFEF9920),
                text: 'GET STARTED',
                onPressed: () {
                  Get.to(PageView4());
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
