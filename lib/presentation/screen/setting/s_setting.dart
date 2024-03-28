import 'package:joljol/presentation/screen/setting/s_town_info.dart';
import 'package:joljol/presentation/widget/appbar/w_title_with_back_appbar.dart';
import 'package:joljol/utilities/index.dart';

import 'w_setting_row.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleWithBackAppbar(title: "설정"),
      body: Padding(
        padding: Constants.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "계정",
              style: AppFonts.part,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.h),
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 7.h),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.gray100,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SettingRowWidget(
                    func: () => Get.toNamed(RoutePath.userInfo),
                    title: "내 정보",
                  ),
                  const Divider(
                    color: AppColors.gray100,
                    height: 1,
                  ),
                  SettingRowWidget(
                    func: () => Get.to(() => const TownInfoScreen()),
                    title: "동네 정보",
                  ),
                  const Divider(
                    color: AppColors.gray100,
                    height: 1,
                  ),
                  SettingRowWidget(
                    func: () {},
                    title: "비밀번호 변경",
                  ),
                  const Divider(
                    color: AppColors.gray100,
                    height: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    child: Text(
                      "계정 삭제",
                      style: AppFonts.detail.copyWith(color: AppColors.orange),
                    ),
                  )
                ],
              ),
            ),
            Text(
              "서비스",
              style: AppFonts.part,
            ),
            hEmptyBox(10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 33.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SettingRowWidget(
                    func: () {},
                    title: "알림 설정",
                  ),
                  SettingRowWidget(
                    func: () {},
                    title: "서비스 정보",
                  ),
                  SettingRowWidget(
                    func: () {},
                    title: "자주 묻는 질문",
                  ),
                  hEmptyBox(40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "버전",
                        style: AppFonts.mainText,
                      ),
                      Text(
                        "1.0.0",
                        style: AppFonts.mainText,
                      )
                    ],
                  ),
                  hEmptyBox(13.h),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "로그아웃",
                      style: AppFonts.mainText
                          .copyWith(decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
