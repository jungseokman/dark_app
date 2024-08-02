import 'package:dark_app/features/dark_app/config/constans.dart';
import 'package:dark_app/features/dark_app/config/styles.dart';
import 'package:dark_app/features/dark_app/presentation/bloc/secret/secret_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return AnimatedCrossFade(
        firstChild: SizedBox(
          width: 205.w,
          height: 55.h,
          child: TextField(
            controller: textEditingController,
            obscureText: isPw,
            cursorColor: AppColors.greenColor[0],
            style: TextStyles.text1.copyWith(color: AppColors.greenColor[0]),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle:
                  TextStyles.text1.copyWith(color: AppColors.greyColors[0]),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.greenColor[0],
                ),
                borderRadius: BorderRadius.circular(10.h),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.greenColor[1],
                ),
                borderRadius: BorderRadius.circular(10.h),
              ),
            ),
          ),
        ),
        secondChild: SizedBox(
          width: 205.w,
          height: 55.h,
          child: TextField(
            controller: textEditingController,
            obscureText: isPw,
            cursorColor: AppColors.blueColors[0],
            style: TextStyles.text1,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle:
                  TextStyles.text1.copyWith(color: AppColors.greyColors[0]),
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
        ),
        crossFadeState: context.watch<SecretBloc>().state.isSecret
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: Constants.signinDuration);
  }
}
