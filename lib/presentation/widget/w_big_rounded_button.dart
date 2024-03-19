import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joljol/common/app_colors.dart';
import 'package:joljol/common/app_fonts.dart';

class BigRoundedButtonWidget extends StatelessWidget {
  const BigRoundedButtonWidget(
      {super.key, required this.text, required this.func});
  final String text;

  final Function func;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 355.w,
      height: 61.h,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(31.69)),
              side: BorderSide.none,
              backgroundColor: AppColors.black),
          onPressed: () {
            func();
          },
          child: Text(
            text,
            style: AppFonts.text.copyWith(color: AppColors.white),
          )),
    );
  }
}
