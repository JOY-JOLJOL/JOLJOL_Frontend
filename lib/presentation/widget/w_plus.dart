import '../../utilities/index.dart';

class PlusWidget extends StatelessWidget {
  const PlusWidget({super.key, required this.color, required this.size});
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: size.w,
      height: size.w,
      child: SvgPicture.asset(
        AppIcons.plus,
        colorFilter: const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
      ),
    );
  }
}
