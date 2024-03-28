import '../../utilities/index.dart';

class ArrowWidget extends StatelessWidget {
  const ArrowWidget({
    super.key,
    required this.black,
  });

  final bool black;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 28.w,
        height: 28.w,
        decoration: BoxDecoration(
            color: black ? AppColors.white : AppColors.black,
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          AppIcons.go,
          fit: BoxFit.contain,
          colorFilter: ColorFilter.mode(
              black ? AppColors.black : AppColors.white, BlendMode.srcIn),
        ));
  }
}
