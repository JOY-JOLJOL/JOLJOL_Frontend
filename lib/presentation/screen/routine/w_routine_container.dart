import 'package:joljol/utilities/index.dart';

class RoutineContainerWidget extends StatelessWidget {
  const RoutineContainerWidget(
      {super.key,
      required this.title,
      required this.exp,
      required this.goal,
      required this.participants,
      required this.date,
      this.inProgress = false});
  final String title;
  final String exp;
  final String goal;
  final String participants;
  final String date;
  final bool inProgress;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 26.h),
      decoration: BoxDecoration(
          border: Border.all(
              color: inProgress ? AppColors.gray100 : Colors.transparent),
          color: inProgress ? AppColors.white : AppColors.gray100,
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppFonts.part,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: inProgress ? AppColors.black : Colors.transparent,
                    ),
                    color: inProgress ? AppColors.white : AppColors.orange,
                    borderRadius: BorderRadius.circular(31.18)),
                child: Text(
                  exp,
                  style: AppFonts.detail.copyWith(
                      color: inProgress ? AppColors.black : AppColors.white),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: inProgress ? 0 : 15.h),
            child: Row(
              children: [
                Container(
                  decoration: const BoxDecoration(color: AppColors.gray300),
                  width: 14.w,
                  height: 27.h,
                ),
                wEmptyBox(10.w),
                Text(
                  goal,
                  style: AppFonts.detail,
                )
              ],
            ),
          ),
          inProgress
              ? Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 6.h,
                          horizontal: 10.w,
                        ),
                        decoration: BoxDecoration(
                            color: AppColors.black,
                            borderRadius: BorderRadius.circular(31.18)),
                        child: Text(
                          "2주/4주",
                          style: AppFonts.standard2
                              .copyWith(color: AppColors.white),
                        ),
                      ),
                      wEmptyBox(6.w),
                      SizedBox(
                        height: 10.h,
                        width: 174.22.w,
                        child: const LinearProgressIndicator(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          value: 1,
                          backgroundColor: AppColors.white,
                          color: AppColors.black,
                        ),
                      ),
                      wEmptyBox(6.w),
                      Text(
                        "30,000",
                        style: AppFonts.standard2,
                      )
                    ],
                  ),
                )
              : const SizedBox(),
          Row(
            children: [
              SvgPicture.asset(
                AppIcons.withN,
                height: 25.h,
                width: 25.w,
                colorFilter: ColorFilter.mode(
                    inProgress ? AppColors.black : AppColors.gray300,
                    BlendMode.srcIn),
              ),
              Text(
                participants,
                style: AppFonts.detail.copyWith(
                    color: inProgress ? AppColors.black : AppColors.gray300),
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(
                AppIcons.calendar,
                height: 25.h,
                width: 25.w,
                colorFilter: ColorFilter.mode(
                    inProgress ? AppColors.black : AppColors.gray300,
                    BlendMode.srcIn),
              ),
              Text(date,
                  style: AppFonts.detail.copyWith(
                      color: inProgress ? AppColors.black : AppColors.gray300))
            ],
          )
        ],
      ),
    );
  }
}
