import 'package:dark_app/features/dark%20app/config/styles.dart';
import 'package:dark_app/features/dark%20app/presentation/widgets/custom_button_border.dart';
import 'package:dark_app/features/dark%20app/presentation/widgets/custom_button_fill.dart';
import 'package:dark_app/features/dark%20app/presentation/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final double titleTop = 220.h;
  final double titleLeft = 85.w;
  final TextEditingController textController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: titleTop,
            left: titleLeft,
            child: Text(
              "R",
              style: TextStyles.title1,
            ),
          ),
          Positioned(
            top: titleTop,
            left: 30.w + titleLeft,
            child: Text(
              "A",
              style: TextStyles.title1,
            ),
          ),
          Positioned(
            top: titleTop,
            left: 60.w + titleLeft,
            child: Text(
              "P",
              style: TextStyles.title1,
            ),
          ),
          Positioned(
            top: titleTop,
            left: 90.w + titleLeft,
            child: Text(
              "K",
              style: TextStyles.title1,
            ),
          ),
          Positioned(
            top: titleTop,
            left: 120.w + titleLeft,
            child: Text(
              "P",
              style: TextStyles.title1,
            ),
          ),
          Positioned(
            top: titleTop,
            left: 150.w + titleLeft,
            child: Text(
              "A",
              style: TextStyles.title1,
            ),
          ),
          Positioned(
            top: titleTop,
            left: 180.w + titleLeft,
            child: Text(
              "D",
              style: TextStyles.title1,
            ),
          ),
          Positioned(
            top: titleTop + 80.h,
            left: 0,
            right: 0,
            child: Column(
              children: [
                CustomInput(
                  hintText: "ID",
                  textEditingController: textController,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomInput(
                  isPw: true,
                  hintText: "PASSWORD",
                  textEditingController: pwController,
                ),
                SizedBox(
                  height: 5.h,
                ),
                const CustomButtonFill(
                  text: "LOGIN",
                ),
                SizedBox(
                  height: 5.h,
                ),
                const CustomButtonBorder(text: "JOIN"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
