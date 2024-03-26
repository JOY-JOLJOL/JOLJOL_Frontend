import 'package:flutter/widgets.dart';

import '../../../utilities/index.dart';

class TitleWithBackAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const TitleWithBackAppbar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const BackButtonWidget(),
      elevation: 0,
      title: Text(
        title,
        style: AppFonts.part,
      ),
      backgroundColor: AppColors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
