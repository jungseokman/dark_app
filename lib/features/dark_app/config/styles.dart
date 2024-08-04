import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  //* 전체 글꼴
  static final _font1 = GoogleFonts.poppins();
  static final _font2 = GoogleFonts.oswald();

  //* 타이틀 텍스트 스타일
  static TextStyle get title1 => _font2.copyWith(
        color: AppColors.blueColors[0],
        fontSize: 50.sp,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get title2 => _font1.copyWith(
        color: AppColors.whiteColors[0],
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
      );

  //* 기본 텍스트 스타일
  static TextStyle get text1 => _font1.copyWith(
        color: AppColors.blackColors[0],
        fontSize: 14.sp,
      );
  static TextStyle get text2 => _font1.copyWith(
        color: AppColors.greyColors[1],
        fontSize: 12.sp,
      );
}

abstract class AppColors {
  //* 하얀색
  static const whiteColors = [
    Color(0xffffffff),
  ];

  //* 검정색
  static const blackColors = [
    //? 0 ~ 2
    Color(0xff000000),
    Color.fromARGB(255, 62, 58, 80),
    Color.fromARGB(255, 5, 0, 24),
  ];

  //* 회색
  static const greyColors = [
    //? 0 ~ 2
    Color.fromARGB(255, 217, 216, 216),
    Color.fromARGB(255, 152, 152, 152),
    Color.fromARGB(255, 237, 234, 234),
  ];

  //* 파란색
  static const blueColors = [
    //? 0 ~ 2
    Color.fromARGB(255, 34, 46, 141),
    Color.fromARGB(255, 35, 63, 245),
  ];

  static const purpleColor = [
    //? 0 ~ 2
    Color(0xff7974E7),
  ];

  static const redColor = [
    //? 0 ~ 2
    Color(0xffF0635A),
  ];

  static const greenColor = [
    //? 0 ~ 2
    Color.fromARGB(255, 44, 219, 0),
    Color.fromARGB(255, 26, 125, 2),
  ];
}
