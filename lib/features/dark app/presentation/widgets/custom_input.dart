import 'package:dark_app/features/dark%20app/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    this.isPw = false,
    required this.hintText,
    required this.textEditingController,
  });

  final bool isPw;
  final String hintText;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 205.w,
      height: 55.h,
      child: TextField(
        controller: textEditingController,
        obscureText: isPw,
        decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blueColors[1],
            ),
            borderRadius: BorderRadius.circular(10.h),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackColors[1],
            ),
            borderRadius: BorderRadius.circular(10.h),
          ),
        ),
      ),
    );
  }
}
