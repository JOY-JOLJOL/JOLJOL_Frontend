import '../../../utilities/index.dart';

class SettingRowWidget extends StatelessWidget {
  const SettingRowWidget({
    super.key,
    required this.func,
    required this.title,
  });
  final Function func;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => func(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppFonts.detail,
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20.sp,
            )
          ],
        ),
      ),
    );
  }
}
