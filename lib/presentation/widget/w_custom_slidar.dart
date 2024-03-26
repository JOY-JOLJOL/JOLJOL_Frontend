import 'package:slidable_button/slidable_button.dart';

import '../../utilities/index.dart';

class CustomSliderWidget extends StatefulWidget {
  //TODO: disabled 되는 경우 처리
  const CustomSliderWidget({
    super.key,
  });

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  Color color = AppColors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 369.w,
      height: 66.h,
      decoration: BoxDecoration(
        color: AppColors.gray100,
        borderRadius: BorderRadius.circular(100),
      ),
      padding: EdgeInsets.symmetric(horizontal: 5.48.w),
      child: Center(
        child: HorizontalSlidableButton(
          onChanged: (position) => {
            if (position == SlidableButtonPosition.end)
              {
                setState(
                  () => color = AppColors.orange,
                )
              }
            else
              {
                setState(
                  () => color = AppColors.black,
                )
              }
          },
          buttonWidth: 99.48.w,
          width: 359.w,
          height: 56.84.h,
          disabledColor: AppColors.gray300,
          borderRadius: BorderRadius.circular(100),
          color: AppColors.gray100,
          buttonColor: color,
          label: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "GO",
                  style: AppFonts.standard1.copyWith(color: AppColors.white),
                ),
                SvgPicture.asset(
                  AppIcons.go,
                  colorFilter:
                      const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                )
              ],
            ),
          ),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "밀어서 산책 조르기",
                    style: AppFonts.detail.copyWith(color: AppColors.gray300),
                  ),
                  SvgPicture.asset(AppIcons.deco)
                ],
              )),
        ),
      ),
    );
  }
}
