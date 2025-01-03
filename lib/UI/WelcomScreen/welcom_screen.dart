import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/CustomWidget/custom_row.dart';
import 'package:foodapp/UI/WelcomScreen/page_view1.dart';
import 'package:foodapp/UI/WelcomScreen/page_view2.dart';
import 'package:foodapp/UI/WelcomScreen/page_view3.dart';
import 'package:foodapp/UI/WelcomScreen/page_view4.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({super.key});

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              PageViwe1(
                
              ),
              PageView2(),
              PageView3(),
              PageView4(),
            ],
          ),
        ],
      ),
    );
  }
}
