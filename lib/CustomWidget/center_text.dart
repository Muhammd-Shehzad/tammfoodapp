import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CenterText extends StatelessWidget {
  CenterText({
    super.key,
    this.text1,
  });
  final text1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text1,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
