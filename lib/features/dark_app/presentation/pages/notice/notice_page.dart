import 'package:dark_app/features/dark_app/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.only(
                left: 20.w, right: 20.w, top: 60.h, bottom: 110.h),
            itemBuilder: (context, index) {
              return Container(
                width: 300.w,
                height: 70.h,
                padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greyColors[2]),
                    borderRadius: BorderRadius.circular(6.w)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  "안녕하세여안녕하세여안녕하세여안녕하세여안녕하세여안녕하세여안녕하세여안녕하세여",
                                  style: TextStyles.text1.copyWith(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "작성자",
                          style: TextStyles.text2,
                        ),
                        Text(
                          "2024.08.01",
                          style: TextStyles.text2,
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              height: 15.h,
            ),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
