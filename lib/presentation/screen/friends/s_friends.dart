import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:joljol/presentation/widget/appbar/w_title_with_back_appbar.dart';

import '../../../utilities/index.dart';
import 'w_friend_list.dart';
import 'w_friends_recent_story_circle.dart';
import 'w_friends_search_bar.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TitleWithBackAppbar(title: "나의 친구"),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FriendsSearchBarWidget(),
            Padding(
              padding: EdgeInsets.fromLTRB(28.w, 36.h, 28.w, 18.h),
              child: Text(
                "최근 올라온 일기",
                style: AppFonts.part,
              ),
            ),
            SizedBox(
              height: 99.h,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 28.w),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return const FriendsRecentStoryCircleWidget(
                      isPlus: true,
                      name: "우리우리",
                    );
                  }),
                  separatorBuilder: (context, index) => wEmptyBox(15.w),
                  itemCount: 10),
            ),
            hEmptyBox(39.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 28.w,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "나의 친구",
                    style: AppFonts.part,
                  ),
                  wEmptyBox(6.w),
                  Text(
                    "656",
                    style:
                        AppFonts.standard2.copyWith(color: AppColors.gray300),
                  )
                ],
              ),
            ),
            Expanded(
              child: SlidableAutoCloseBehavior(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  itemBuilder: ((context, index) => const FriendListWidget(
                        name: "호두의 친구",
                        id: "@user_id",
                        title: "좌회전 마스터",
                        isNew: true,
                      )),
                  itemCount: 10,
                ),
              ),
            ),
          ],
        ));
  }
}
