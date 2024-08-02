import 'package:dark_app/features/dark%20app/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonFill extends StatelessWidget {
  const CustomButtonFill({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 205.w,
        height: 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.h),
          color: AppColors.blueColors[0],
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyles.title2,
        ),
      ),
    );
  }
}
