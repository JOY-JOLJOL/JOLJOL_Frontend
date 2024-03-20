import '../../utilities/index.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: SvgPicture.asset(
        AppIcons.back,
        height: 20.67.h,
        width: 10.33.w,
      ),
    );
  }
}
