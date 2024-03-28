import '../../../utilities/index.dart';
import '../../widget/w_arrow.dart';

class GoContainerWidget extends StatelessWidget {
  const GoContainerWidget({
    super.key,
    this.black = false,
    required this.title,
    required this.page,
  });
  final bool black;
  final String title;
  final String page;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(page),
      child: Container(
        width: 165.w,
        height: 56.h,
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
        decoration: BoxDecoration(
            color: black ? AppColors.black : AppColors.gray100,
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppFonts.detail
                  .copyWith(color: black ? AppColors.white : AppColors.black),
            ),
            ArrowWidget(black: black)
          ],
        ),
      ),
    );
  }
}
