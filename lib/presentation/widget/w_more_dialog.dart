import 'package:flutter/widgets.dart';

import '../../utilities/index.dart';

class MoreDialogWidget extends StatelessWidget {
  const MoreDialogWidget({super.key, required this.menus});
  final List<MoreRowWidget> menus;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => (showDialog(
          context: context,
          builder: (context) => Dialog(
              insetPadding:
                  EdgeInsets.only(left: 204.w, right: 29.w, top: 10.h),
              alignment: Alignment.topRight,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 32.h * menus.length + 42.h,
                    child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(vertical: 20.h),
                        itemBuilder: (context, index) => menus[index],
                        separatorBuilder: (context, index) => Divider(
                              height: 18.h,
                              color: AppColors.gray300,
                            ),
                        itemCount: menus.length),
                  )
                ],
              )))),
      child: SvgPicture.asset(
        AppIcons.menu,
        width: 44.29.w,
        height: 44.29.h,
      ),
    );
  }
}

class MoreRowWidget extends StatelessWidget {
  const MoreRowWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.func,
  });
  final String icon;
  final String title;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            width: 23.w,
            height: 23.w,
          ),
          Text(
            title,
            style: AppFonts.detail,
          )
        ],
      ),
    );
  }
}
