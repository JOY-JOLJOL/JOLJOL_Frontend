import 'package:flutter/widgets.dart';
import 'package:joljol/presentation/screen/setting/s_setting.dart';
import 'package:joljol/presentation/screen/home/w_dog_with_title.dart';
import 'package:joljol/presentation/screen/home/w_rounded_container.dart';
import 'package:joljol/presentation/widget/w_level.dart';
import 'package:joljol/utilities/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        actions: [
          InkWell(
            child: SvgPicture.asset(
              AppIcons.alarm,
              width: 44.w,
              height: 44.w,
            ),
          ),
          InkWell(
            onTap: () => Get.toNamed(RoutePath.setting),
            child: SvgPicture.asset(
              AppIcons.setting,
              width: 44.w,
              height: 44.w,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "반가워요 \n우리우리의 친구",
              style: AppFonts.title,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 38.h),
              child: Row(
                children: [
                  const LevelWidget(),
                  wEmptyBox(7.w),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.black,
                        borderRadius: BorderRadius.circular(31.18)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.5.w, right: 15.5.w),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.friend,
                            width: 25.w,
                            height: 25.w,
                            colorFilter: const ColorFilter.mode(
                                AppColors.white, BlendMode.srcIn),
                          ),
                          Text(
                            "56",
                            style: AppFonts.standard2
                                .copyWith(color: AppColors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const DogWithTitleWidget(),
            hEmptyBox(36.h),
            const RoundedContainerRowWidget(
              isRoute: true,
            ),
          ],
        ),
      ),
    );
  }
}
