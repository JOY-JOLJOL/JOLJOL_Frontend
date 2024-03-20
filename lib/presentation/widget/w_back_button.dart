import '../../utilities/index.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: SvgPicture.asset(
        AppIcons.back,
        height: 20.67.h,
        width: 10.33.w,
      ),
    );
  }
}
