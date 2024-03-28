import '../../utilities/index.dart';

class LevelWidget extends StatelessWidget {
  const LevelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 15.w),
      decoration: BoxDecoration(
          color: AppColors.black, borderRadius: BorderRadius.circular(31.58)),
      child: Text(
        "Lv 6",
        style: AppFonts.standard2.copyWith(color: AppColors.white),
      ),
    );
  }
}
