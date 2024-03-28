import 'package:joljol/presentation/widget/appbar/w_title_with_back_appbar.dart';
import 'package:joljol/presentation/widget/w_bottom_modal.dart';
import 'package:joljol/presentation/widget/w_rounded_button.dart';
import 'package:joljol/utilities/index.dart';

class TownInfoScreen extends StatelessWidget {
  const TownInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleWithBackAppbar(title: "동네 정보"),
      body: Padding(
        padding: Constants.defaultPadding,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "등록된 동네",
                  style: AppFonts.part,
                ),
                wEmptyBox(8.w),
                Text(
                  "2 ",
                  style: AppFonts.standard2.copyWith(color: AppColors.orange),
                ),
                Text(
                  "/ 3",
                  style: AppFonts.standard2,
                )
              ],
            ),
            hEmptyBox(15.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  constraints: BoxConstraints(
                    //TODO: 개수 * 높이
                    maxHeight: 140.h,
                  ),
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => hEmptyBox(15.h),
                    itemBuilder: ((context, index) {
                      return const TownContainerWidget(town: '남영동');
                    }),
                    itemCount: 2,
                  ),
                ),
                RoundedButtonWidget(
                  text: "동네 추가하기",
                  func: () {
                    bottomModal(
                        context,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextField(),
                            hEmptyBox(30.h),
                            Text(
                              "근처 동네",
                              style: AppFonts.detail
                                  .copyWith(color: AppColors.gray300),
                            )
                          ],
                        ));
                  },
                  icon: SvgPicture.asset(
                    AppIcons.locate,
                    colorFilter: const ColorFilter.mode(
                        AppColors.white, BlendMode.srcIn),
                    width: 30.w,
                    height: 30.w,
                  ),
                  hasIcon: true,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TownContainerWidget extends StatelessWidget {
  const TownContainerWidget({
    super.key,
    required this.town,
  });
  final String town;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
      decoration: BoxDecoration(
        color: AppColors.gray100,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            AppIcons.locate,
            width: 20.w,
            height: 20.w,
          ),
          Text(
            town,
            style: AppFonts.text,
          )
        ],
      ),
    );
  }
}
