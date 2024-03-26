import '../../../utilities/index.dart';
import '../../widget/w_plus.dart';

class FriendsRecentStoryCircleWidget extends StatelessWidget {
  const FriendsRecentStoryCircleWidget({
    super.key,
    required this.isPlus,
    required this.name,
  });
  final bool isPlus;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO: isPlus ? 산책 시작 팝업 함수 : 스토리 조회 함수
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: 69.91.h,
                height: 69.91.h,
                decoration: ShapeDecoration(
                  shape: OvalBorder(
                      side: BorderSide(
                          width: 2.5.w,
                          color: isPlus ? AppColors.orange : AppColors.blue1)),
                ),
                //TODO: 사진 대체
              ),
              isPlus
                  ? const Positioned(
                      bottom: 0,
                      right: 0,
                      child: PlusWidget(color: AppColors.orange, size: 16))
                  : const SizedBox()
            ],
          ),
          hEmptyBox(6.h),
          Container(
              constraints: BoxConstraints(maxWidth: 60.w),
              child: Text(name,
                  overflow: TextOverflow.ellipsis, style: AppFonts.detail))
        ],
      ),
    );
  }
}
