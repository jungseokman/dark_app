import 'package:dark_app/features/dark_app/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NoticeDetailSecret extends StatelessWidget {
  const NoticeDetailSecret({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 70.h),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Icon(
                  Icons.chevron_left_rounded,
                  size: 25.w,
                  color: AppColors.greenColor[0],
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Text(
                  "제목제목ㄴㅁ아먼암너암너안머암너임",
                  style: TextStyles.text4.copyWith(
                    color: AppColors.greenColor[0],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "2023-12-01",
                style: TextStyles.text2.copyWith(
                  color: AppColors.greenColor[1],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "작성자",
                style: TextStyles.text2.copyWith(
                  color: AppColors.greenColor[1],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "sakdjsakldjasljdlㅁ나어미나어ㅣㅁ나어ㅣㅏㅁ너이ㅏㅁ너임너임나ㅓ이마너이마",
                style: TextStyles.text3.copyWith(
                  color: AppColors.greenColor[0],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
