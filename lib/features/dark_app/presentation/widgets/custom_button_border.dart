import 'package:dark_app/features/dark_app/config/constans.dart';
import 'package:dark_app/features/dark_app/config/styles.dart';
import 'package:dark_app/features/dark_app/presentation/bloc/secret/secret_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonBorder extends StatelessWidget {
  const CustomButtonBorder({
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
      child: AnimatedContainer(
        duration: Constants.signinDuration,
        width: 205.w,
        height: 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.h),
          border: Border.all(
            color: context.watch<SecretBloc>().state.isSecret
                ? AppColors.greenColor[1]
                : AppColors.blueColors[0],
            width: 1.5.w,
          ),
        ),
        alignment: Alignment.center,
        child: AnimatedDefaultTextStyle(
          duration: Constants.signinDuration,
          style: TextStyles.title2.copyWith(
            color: context.watch<SecretBloc>().state.isSecret
                ? AppColors.greenColor[1]
                : AppColors.blueColors[0],
          ),
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
