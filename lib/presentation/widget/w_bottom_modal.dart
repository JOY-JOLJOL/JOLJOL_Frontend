import 'package:joljol/utilities/index.dart';

Future bottomModal(
  BuildContext context,
  Widget wid,
) {
  return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(26.08))),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 39.w, vertical: 17.7.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 26.95.w,
                height: 2.61.h,
                decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.circular(86.95)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 39.h),
                child: wid,
              ),
            ],
          ),
        );
      });
}
