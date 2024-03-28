import 'package:joljol/presentation/widget/w_more_dialog.dart';
import 'package:joljol/utilities/index.dart';
import '../../widget/appbar/w_more_app_bar.dart';
import '../../widget/w_custom_slidar.dart';
import '../../widget/w_level.dart';
import '../home/w_dog_with_title.dart';
import '../home/w_rounded_container.dart';
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelWidget(),
                RelationIndicatorWidget(
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
            const DogWithTitleWidget(),
            hEmptyBox(16.h),
            const RoundedContainerRowWidget(),
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
