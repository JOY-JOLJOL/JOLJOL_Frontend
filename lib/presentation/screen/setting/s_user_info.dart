import 'package:joljol/presentation/widget/appbar/w_title_with_back_appbar.dart';
import 'package:joljol/utilities/index.dart';

import 'w_setting_row.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleWithBackAppbar(title: "내 정보"),
      body: Padding(
        padding: Constants.defaultPadding,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 22.h),
              decoration: BoxDecoration(
                  color: AppColors.gray100,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "김집사",
                        style: AppFonts.part,
                      ),
                      wEmptyBox(6.w),
                      Text(
                        "23세",
                        style: AppFonts.mainText
                            .copyWith(color: AppColors.gray300),
                      )
                    ],
                  ),
                  hEmptyBox(2.h),
                  Text(
                    "email@email.com ∙ user_id",
                    style: AppFonts.detail,
                  ),
                ],
              ),
            ),
            hEmptyBox(19.h),
            SettingRowWidget(func: () {}, title: "이메일 변경"),
            SettingRowWidget(func: () {}, title: "아이디 변경"),
            SettingRowWidget(func: () {}, title: "이름 변경"),
            SettingRowWidget(func: () {}, title: "생년월일 변경"),
          ],
        ),
      ),
    );
  }
}
