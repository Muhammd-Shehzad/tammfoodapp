import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConnectButtonForSignIN extends StatelessWidget {
  ConnectButtonForSignIN({
    super.key,
    this.text,
    this.image,
    this.btnColor, this.onPressed,
  });

  final text;
  final image;
  final btnColor;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50.h,
        width: 330.w,
        decoration: BoxDecoration(
            color: btnColor, borderRadius: BorderRadius.circular(10)),
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
                    image,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 18.sp),
            ),
          ],
        ),
      ),
    );
  }
}