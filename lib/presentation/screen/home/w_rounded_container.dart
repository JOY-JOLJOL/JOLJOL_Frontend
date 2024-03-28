import 'package:joljol/presentation/widget/w_arrow.dart';

import '../../../utilities/index.dart';

class RoundedContainerRowWidget extends StatelessWidget {
  const RoundedContainerRowWidget({
    super.key,
    this.isRoute = false,
  });
  final bool isRoute;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RoundedContainerWidget(
            isRoute: isRoute,
            title: "산책 횟수",
            wid: Row(
              children: [
                Text("999 ", style: AppFonts.highlight),
                Text("상위 16%", style: AppFonts.text)
              ],
            )),
        RoundedContainerWidget(
          isRoute: isRoute,
          title: "보유 타이틀",
          black: true,
          wid: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "999",
                style: AppFonts.highlight.copyWith(color: AppColors.white),
              ),
              wEmptyBox(5.w),
              Text(
                "/999",
                style: AppFonts.standard1.copyWith(color: AppColors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class RoundedContainerWidget extends StatelessWidget {
  const RoundedContainerWidget({
    super.key,
    this.black = false,
    required this.title,
    required this.wid,
    required this.isRoute,
  });
  final bool black;
  final String title;
  final Widget wid;
  final bool isRoute;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 25.h),
      decoration: BoxDecoration(
          color: black ? AppColors.black : AppColors.gray100,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppFonts.detail
                    .copyWith(color: black ? AppColors.white : AppColors.black),
              ),
              isRoute ? ArrowWidget(black: black) : const SizedBox()
            ],
          ),
          hEmptyBox(15.h),
          wid,
        ],
      ),
    );
  }
}
