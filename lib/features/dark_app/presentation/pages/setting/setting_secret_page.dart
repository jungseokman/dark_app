import 'package:dark_app/features/dark_app/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingSecretPage extends StatelessWidget {
  const SettingSecretPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 110.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "- 내 정보 변경",
                style:
                    TextStyles.text4.copyWith(color: AppColors.greenColor[0]),
              ),
              SizedBox(height: 5.h),
              Text(
                "- 공지사항",
                style:
                    TextStyles.text4.copyWith(color: AppColors.greenColor[0]),
              ),
              SizedBox(height: 5.h),
              Text(
                "- 이용약관",
                style:
                    TextStyles.text4.copyWith(color: AppColors.greenColor[0]),
              ),
              SizedBox(height: 5.h),
              Text(
                "- 문의하기",
                style:
                    TextStyles.text4.copyWith(color: AppColors.greenColor[0]),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greenColor[1]),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "로그아웃",
                    style: TextStyles.text3.copyWith(
                      color: AppColors.greenColor[0],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greenColor[1]),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "탈퇴",
                    style: TextStyles.text3.copyWith(
                      color: AppColors.greenColor[0],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
