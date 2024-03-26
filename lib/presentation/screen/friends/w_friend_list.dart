import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../utilities/index.dart';

class FriendListWidget extends StatelessWidget {
  const FriendListWidget({
    super.key,
    required this.name,
    required this.id,
    required this.title,
    required this.isNew,
  });
  final String name;
  final String id;
  final String title;
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
          extentRatio: 1 / 4,
          motion: const DrawerMotion(),
          children: [
            CustomSlidableAction(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                backgroundColor: AppColors.orange,
                onPressed: (context) => {
                      //TODO: 산책 조르기 함수 추가
                    },
                child: Text(
                  "산책 조르기",
                  style: AppFonts.detail.copyWith(color: AppColors.white),
                ))
          ]),
      child: InkWell(
        onTap: () => Get.toNamed(RoutePath.friendsProfile),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 13.h),
          child: Row(
            children: [
              wEmptyBox(30.w),
              Stack(
                children: [
                  //TODO: 강아지 이미지 대체
                  Container(
                    width: 47.91.w,
                    height: 47.91.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.gray300),
                  ),

                  isNew
                      ? Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 12.85.w,
                            height: 12.85.w,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: AppColors.white),
                            child: Center(
                              child: Container(
                                width: 6.85.w,
                                height: 6.85.w,
                                decoration: const BoxDecoration(
                                    color: AppColors.blue2,
                                    shape: BoxShape.circle),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
              wEmptyBox(19.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: AppFonts.text,
                      ),
                      wEmptyBox(6.w),
                      Text(
                        id,
                        style:
                            AppFonts.detail.copyWith(color: AppColors.gray300),
                      )
                    ],
                  ),
                  Text(
                    title,
                    style: AppFonts.detail,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
