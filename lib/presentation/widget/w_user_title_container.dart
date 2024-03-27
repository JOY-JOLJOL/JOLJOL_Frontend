import '../../utilities/index.dart';

class UserTitleContainerWidget extends StatelessWidget {
  const UserTitleContainerWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 23.5.w),
      decoration: BoxDecoration(
          color: AppColors.orange, borderRadius: BorderRadius.circular(31.18)),
      child: Text(
        title,
        style: AppFonts.detail.copyWith(color: AppColors.white),
      ),
    );
  }
}
