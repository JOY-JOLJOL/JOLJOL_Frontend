import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joljol/common/app_colors.dart';
import 'package:joljol/common/app_fonts.dart';

class RoundedButtonWidget extends StatelessWidget {
  const RoundedButtonWidget(
      {super.key,
      required this.text,
      this.disabled = false,
      required this.func,
      this.icon = const SizedBox(),
      this.hasIcon = false});
  final String text;
  final bool disabled;
  final Function func;
  final Widget icon;
  final bool hasIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: hasIcon ? 151.w : 125.w,
      height: 32.h,
      child: OutlinedButton.icon(
          icon: icon,
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.01)),
              side: BorderSide.none,
              backgroundColor: disabled ? AppColors.gray300 : AppColors.black),
          onPressed: () {
            func();
          },
          label: Text(
            text,
            style: AppFonts.detail.copyWith(color: AppColors.white),
          )),
    );
  }
}
