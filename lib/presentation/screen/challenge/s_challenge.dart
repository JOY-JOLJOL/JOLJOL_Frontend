import 'package:joljol/presentation/widget/appbar/w_title_with_back_appbar.dart';
import 'package:joljol/presentation/widget/w_user_title_container.dart';
import 'package:joljol/utilities/index.dart';

import 'w_title_container.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleWithBackAppbar(title: "우리나의 타이틀"),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                hEmptyBox(20.h),
                Stack(
                  children: [
                    //TODO: 이미지 변경
                    Center(
                      child: Container(
                        width: 125.w,
                        height: 125.w,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: AppColors.gray300),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 6.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(31.18),
                            color: AppColors.black),
                        child: Text(
                          "Lv 6",
                          style: AppFonts.standard2
                              .copyWith(color: AppColors.white),
                        ),
                      ),
                    )
                  ],
                ),
                hEmptyBox(24.h),
                const UserTitleContainerWidget(title: '이 구역 최고 날쌘돌이')
              ],
            ),
            hEmptyBox(40.h),
            DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: AppColors.gray300, width: 2)),
              ),
              child: TabBar(
                  labelColor: AppColors.black,
                  unselectedLabelColor: AppColors.gray300,
                  indicatorColor: AppColors.orange,
                  tabs: [
                    Tab(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "보유 타이틀",
                          style: AppFonts.detail,
                        ),
                        wEmptyBox(3.w),
                        Text(
                          "132",
                          style:
                              AppFonts.detail.copyWith(color: AppColors.orange),
                        )
                      ],
                    )),
                    const Tab(
                      text: "도전 과제",
                    )
                  ]),
            ),
            Expanded(
                child: TabBarView(children: [
              GridView.builder(
                padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 26.w),
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 13.h,
                    crossAxisSpacing: 13.w,
                    childAspectRatio: 163.w / 180.h),
                itemBuilder: (context, index) => const TitleContainerWidget(
                  isSelected: false,
                  isLocked: false,
                ),
              ),
              GridView.builder(
                padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 26.w),
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 13.h,
                    crossAxisSpacing: 13.w,
                    childAspectRatio: 163.w / 180.h),
                itemBuilder: (context, index) => const TitleContainerWidget(
                  isSelected: false,
                  isLocked: true,
                ),
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
