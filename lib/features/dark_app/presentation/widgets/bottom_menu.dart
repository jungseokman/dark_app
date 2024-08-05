import 'package:dark_app/features/dark_app/config/constans.dart';
import 'package:dark_app/features/dark_app/config/styles.dart';
import 'package:dark_app/features/dark_app/presentation/bloc/secret/secret_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
    required this.currentIndex,
    required this.index,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final int currentIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    final isSecret = context.read<SecretBloc>().state.isSecret;

    return Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: AnimatedCrossFade(
          firstChild: Column(
            children: [
              Icon(
                icon,
                color: isSecret
                    ? AppColors.greenColor[0]
                    : AppColors.blueColors[0],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                label,
                style: TextStyles.text1.copyWith(
                  color: isSecret
                      ? AppColors.greenColor[0]
                      : AppColors.blueColors[0],
                ),
              ),
            ],
          ),
          secondChild: Column(
            children: [
              Icon(
                icon,
                color: isSecret
                    ? AppColors.greenColor[1]
                    : AppColors.blackColors[0],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                label,
                style: TextStyles.text1.copyWith(
                    color: isSecret
                        ? AppColors.greenColor[1]
                        : AppColors.blackColors[0]),
              ),
            ],
          ),
          crossFadeState: currentIndex == index
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: Constants.menuDuration,
        ),
      ),
    );
  }
}
