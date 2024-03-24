import 'package:joljol/utilities/index.dart';

class SlideWidget extends StatelessWidget {
  const SlideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        'assets/icon/Icon_Slide.svg',
        // ignore: deprecated_member_use
      ),
    );
  }
}
