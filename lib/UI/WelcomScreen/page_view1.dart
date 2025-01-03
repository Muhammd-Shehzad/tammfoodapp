import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/CustomWidget/custom_row.dart';
import 'package:foodapp/UI/WelcomScreen/page_view2.dart';
import 'package:get/get.dart';

class PageViwe1 extends StatefulWidget {
  const PageViwe1({
    super.key,
  });

  @override
  State<PageViwe1> createState() => _PageViwe1State();
}

class _PageViwe1State extends State<PageViwe1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(children: [
          Image.asset('assets/circle.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomRow(),
              SizedBox(
                height: 20.h,
              ),
              Image.asset('assets/ils.png'),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Wellcome',
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
                    'It\'s a Pleasure to meet you,We are exicted that your\'rs here to let\'s get started',
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
                  Get.to(PageView2());
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
