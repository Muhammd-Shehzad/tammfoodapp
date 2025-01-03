import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/CustomWidget/custom_row.dart';
import 'package:foodapp/UI/WelcomScreen/page_view3.dart';
import 'package:get/get.dart';

class PageView2 extends StatelessWidget {
  const PageView2({
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
                height: 10.h,
              ),
              Image.asset('assets/ils2.png'),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'All your favorites',
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
                    'Order from the best local resturants with easy ,on-demand delivery',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              CustomButton(
                heigth: 50.h,
                width: 300.w,
                color: const Color(0xFFEF9920),
                text: 'GET STARTED',
                onPressed: () {
                                    Get.to(PageView3());

                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
