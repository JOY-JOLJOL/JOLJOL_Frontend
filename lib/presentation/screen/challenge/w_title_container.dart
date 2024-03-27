import '../../../utilities/index.dart';
import '../../widget/w_rounded_button.dart';

class TitleContainerWidget extends StatelessWidget {
  const TitleContainerWidget({
    super.key,
    required this.isSelected,
    required this.isLocked,
  });
  final bool isSelected;
  final bool isLocked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isSelected && !isLocked) {
          showDialog(
              context: context,
              builder: (context) => Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(23.w, 30.h, 23.w, 42.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                              onTap: () => Get.back(),
                              child: SvgPicture.asset(AppIcons.close)),
                        ),
                        //TODO: 이미지 변경
                        Container(
                          color: AppColors.gray300,
                          width: 181.w,
                          height: 135.h,
                        ),
                        hEmptyBox(15.h),
                        Text(
                          "타이틀 텍스트",
                          style: AppFonts.part,
                        ),
                        Text(
                          '이 타이틀을 대표 타이틀로 설정할까요?',
                          style: AppFonts.detail,
                        ),
                        hEmptyBox(15.h),
                        RoundedButtonWidget(
                            text: "설정하기",
                            func: () {
//TODO: 장착하기 함수 추가
                            })
                      ],
                    ),
                  )));
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: AppColors.gray100),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: isLocked ? 54.w : 9.w,
                  vertical: isLocked ? 0 : 4.5.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29.11),
                  color: isSelected ? AppColors.orange : AppColors.black),
              child: isLocked
                  ? SvgPicture.asset(
                      AppIcons.lock,
                      colorFilter: const ColorFilter.mode(
                          AppColors.white, BlendMode.srcIn),
                      width: 30.w,
                      height: 30.w,
                    )
                  : Text(
                      "구역 최고 날쌘돌이",
                      style: AppFonts.detail.copyWith(color: AppColors.white),
                    ),
            ),
            Center(
              //TODO: 이미지 변경
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5.h),
                width: 91.w,
                height: 68.h,
                color: AppColors.gray300,
                child: isSelected
                    ? Center(
                        child: Container(
                            width: 44.w,
                            height: 44.w,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.orange),
                            child: const Icon(
                              Icons.bookmark_border_rounded,
                              color: AppColors.white,
                            )),
                      )
                    : const SizedBox(),
              ),
            ),
            Text(
              "연속 코너링 5회 달성",
              style: AppFonts.detail,
            ),
            isLocked
                ? Column(
                    children: [
                      hEmptyBox(7.h),
                      SizedBox(
                        height: 7.h,
                        width: 100.w,
                        child: const LinearProgressIndicator(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          value: 0.5,
                          backgroundColor: AppColors.white,
                          color: AppColors.orange,
                        ),
                      ),
                    ],
                  )
                : Text(
                    "2024년 02월 14일",
                    style: AppFonts.detail.copyWith(color: AppColors.gray300),
                  )
          ],
        ),
      ),
    );
  }
}
