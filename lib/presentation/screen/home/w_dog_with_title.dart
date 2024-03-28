import '../../../utilities/index.dart';
import '../../widget/w_user_title_container.dart';

class DogWithTitleWidget extends StatelessWidget {
  const DogWithTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
