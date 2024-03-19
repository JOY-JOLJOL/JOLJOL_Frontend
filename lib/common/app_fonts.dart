import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joljol/common/app_colors.dart';

class AppFonts {
  static TextStyle title = TextStyle(
      color: AppColors.black,
      fontSize: 30.sp,
      height: 1.3,
      fontFamily: 'PretendardBold');

  static TextStyle part = TextStyle(
      color: AppColors.black,
      fontSize: 18.sp,
      height: 1.4,
      fontFamily: 'PretendardSemiBold');

  static TextStyle text = TextStyle(
      color: AppColors.black,
      fontSize: 16.sp,
      height: 1.6,
      fontFamily: 'PretendardMedium');
  static TextStyle detail = TextStyle(
      color: AppColors.black,
      fontSize: 14.sp,
      height: 1.6,
      fontFamily: 'PretendardRegular');
  static TextStyle highlight = TextStyle(
      color: AppColors.black,
      fontSize: 30.sp,
      height: 1,
      fontFamily: 'GothamBold');
  static TextStyle standard1 = TextStyle(
      color: AppColors.black,
      fontSize: 18.sp,
      height: 1,
      fontFamily: 'GothamBook');
  static TextStyle standard2 = TextStyle(
      color: AppColors.black,
      fontSize: 13.sp,
      height: 1,
      fontFamily: 'GothamBook');
}
