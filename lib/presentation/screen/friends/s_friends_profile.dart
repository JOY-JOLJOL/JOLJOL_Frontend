import 'package:joljol/presentation/widget/w_more_dialog.dart';
import 'package:joljol/utilities/index.dart';
import '../../widget/appbar/w_more_app_bar.dart';
import '../../widget/w_custom_slidar.dart';
import '../../widget/w_user_title_container.dart';
import 'w_go_containder.dart';

class FriendsProfileScreen extends StatelessWidget {
  const FriendsProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MoreAppBar(
        title: "@user_id",
        //TODO: 각 메뉴 함수 추가
        menus: [
          MoreRowWidget(
            icon: AppIcons.trash,
            title: "친구 삭제하기",
            func: () {},
          ),
          MoreRowWidget(
            icon: AppIcons.close,
            title: "차단하기",
            func: () {},
          ),
          MoreRowWidget(
            icon: AppIcons.secure,
            title: "신고하기",
            func: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 6.h, horizontal: 15.w),
                  decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.circular(31.58)),
                  child: Text(
                    "Lv 6",
                    style: AppFonts.standard2.copyWith(color: AppColors.white),
                  ),
                ),
                const RelationIndicatorWidget(
                  isFriend: false,
                )
              ],
            ),
            hEmptyBox(18.h),
            Text(
              "벼리의 친구",
              style: AppFonts.part,
            ),
            hEmptyBox(4.h),
            Row(
              children: [
                Text(
                  "함께 아는 친구 99명",
                  style: AppFonts.detail,
                ),
                wEmptyBox(5.w),
                SizedBox(
                  height: 19.w,
                  width: 61.w,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: 19.w,
                          height: 19.w,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 14,
                        child: Container(
                          width: 19.w,
                          height: 19.w,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 28,
                        child: Container(
                          width: 19.w,
                          height: 19.w,
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 42,
                        child: Container(
                          width: 19.w,
                          height: 19.w,
                          decoration: const BoxDecoration(
                            color: Colors.teal,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            hEmptyBox(28.h),
            SizedBox(
              height: 282.h,
              child: Stack(
                children: [
                  //TODO: 사진 대체
                  Center(
                    child: Container(
                      decoration: const BoxDecoration(color: AppColors.gray300),
                      width: 301.w,
                      height: 264.h,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: UserTitleContainerWidget(
                      title: "이 구역 최고 날쌘돌이",
                    ),
                  )
                ],
              ),
            ),
            hEmptyBox(16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedContainerWidget(
                    title: "산책 횟수",
                    wid: Row(
                      children: [
                        Text("999 ", style: AppFonts.highlight),
                        Text("상위 16%", style: AppFonts.text)
                      ],
                    )),
                RoundedContainerWidget(
                  title: "보유 타이틀",
                  black: true,
                  wid: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "999",
                        style:
                            AppFonts.highlight.copyWith(color: AppColors.white),
                      ),
                      wEmptyBox(5.w),
                      Text(
                        "/999",
                        style:
                            AppFonts.standard1.copyWith(color: AppColors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            hEmptyBox(9.h),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GoContainerWidget(
                    black: true,
                    title: "함께한 루틴 3개",
                    page: RoutePath.friendsRoutine),
                GoContainerWidget(
                    title: "함께한 산책 3개", page: RoutePath.friendsRoutine)
              ],
            ),
            hEmptyBox(29.h),
            const CustomSliderWidget()
          ],
        ),
      ),
    );
  }
}

class RelationIndicatorWidget extends StatelessWidget {
  const RelationIndicatorWidget({
    super.key,
    required this.isFriend,
  });
  final bool isFriend;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 12.w),
      decoration: BoxDecoration(
          color: isFriend ? AppColors.black : AppColors.gray300,
          borderRadius: BorderRadius.circular(7)),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 7.w,
              height: 7.w,
              decoration: BoxDecoration(
                  color: isFriend ? AppColors.orange : AppColors.white,
                  shape: BoxShape.circle),
            ),
            wEmptyBox(6.w),
            Text(
              isFriend ? "친구사이" : "모르는 사이",
              style: AppFonts.detail.copyWith(
                color: AppColors.white,
                leadingDistribution: TextLeadingDistribution.even,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedContainerWidget extends StatelessWidget {
  const RoundedContainerWidget({
    super.key,
    this.black = false,
    required this.title,
    required this.wid,
  });
  final bool black;
  final String title;
  final Widget wid;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      height: 111.h,
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 25.h),
      decoration: BoxDecoration(
          color: black ? AppColors.black : AppColors.gray100,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppFonts.detail
                .copyWith(color: black ? AppColors.white : AppColors.black),
          ),
          hEmptyBox(15.h),
          wid,
        ],
      ),
    );
  }
}
