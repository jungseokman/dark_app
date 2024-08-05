import 'package:dark_app/features/dark_app/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ChatDetailPage extends StatelessWidget {
  const ChatDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.separated(
          padding: EdgeInsets.only(top: 60.h, bottom: 110.h),
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 50.w,
                      child: Text(
                        "나 :",
                        style: TextStyles.text1.copyWith(
                          color: AppColors.greenColor[1],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "가나다라마바사 아자차카 안녕 잘가세요. 가나다라마바사 아자차카 안녕 잘가세요.",
                        style: TextStyles.text1.copyWith(
                          color: AppColors.greenColor[0],
                        ),
                        softWrap: true,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "14:01",
                      style: TextStyles.text1.copyWith(
                        color: AppColors.greenColor[1],
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 50.w,
                      child: Text(
                        "발신인 :",
                        style: TextStyles.text1.copyWith(
                          color: AppColors.greyColors[1],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "가나다라마바사 아자차카 안녕 잘가세요. 가나다라마바사 아자차카 안녕 잘가세요.",
                        style: TextStyles.text1.copyWith(
                          color: AppColors.greyColors[2],
                        ),
                        softWrap: true,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "14:01",
                      style: TextStyles.text1.copyWith(
                        color: AppColors.greyColors[1],
                      ),
                    ),
                  ],
                ),
              );
            }
          },
          separatorBuilder: (context, index) => SizedBox(
            height: 5.h,
          ),
          itemCount: 30,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 90.h,
          child: Container(
            width: double.maxFinite,
            height: 45.h,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              color: AppColors.blackColors[2],
              border: Border(
                top: BorderSide(color: AppColors.greenColor[1]),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    cursorColor: AppColors.greenColor[1],
                    style: TextStyles.text1
                        .copyWith(color: AppColors.greenColor[0]),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Container(
                  width: 50.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.h),
                    border: Border.all(
                      color: AppColors.greenColor[0],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "전송",
                    style: TextStyles.text1
                        .copyWith(color: AppColors.greenColor[0]),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Container(
                    width: 50.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.h),
                      border: Border.all(
                        color: AppColors.greenColor[0],
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "나가기",
                      style: TextStyles.text1
                          .copyWith(color: AppColors.greenColor[0]),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
