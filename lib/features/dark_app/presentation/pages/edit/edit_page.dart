import 'package:dark_app/features/dark_app/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              TextField(
                controller: titleController,
                style: TextStyles.text3,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.h),
                    borderSide: BorderSide(color: AppColors.greyColors[0]),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.h),
                    borderSide: BorderSide(color: AppColors.blueColors[0]),
                  ),
                  labelText: "제목",
                  floatingLabelStyle:
                      TextStyles.text3.copyWith(color: AppColors.blueColors[0]),
                  labelStyle:
                      TextStyles.text3.copyWith(color: AppColors.greyColors[1]),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 480.h,
                child: TextField(
                  controller: contentController,
                  textAlignVertical: TextAlignVertical.top,
                  maxLines: null,
                  expands: true,
                  style: TextStyles.text3,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.h),
                      borderSide: BorderSide(color: AppColors.greyColors[0]),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.h),
                      borderSide: BorderSide(
                        color: AppColors.blueColors[0],
                      ),
                    ),
                    labelText: "내용",
                    alignLabelWithHint: true,
                    floatingLabelStyle: TextStyles.text3
                        .copyWith(color: AppColors.blueColors[0]),
                    labelStyle: TextStyles.text3
                        .copyWith(color: AppColors.greyColors[1]),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: double.maxFinite,
                height: 55.h,
                decoration: BoxDecoration(
                  color: AppColors.blueColors[0],
                  borderRadius: BorderRadius.circular(6.h),
                ),
                alignment: Alignment.center,
                child: Text(
                  "작성하기",
                  style:
                      TextStyles.title2.copyWith(fontWeight: FontWeight.normal),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
