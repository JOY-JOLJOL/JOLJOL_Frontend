import 'package:joljol/presentation/widget/w_more_dialog.dart';

import '../../../utilities/index.dart';

class MoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MoreAppBar({
    super.key,
    required this.title,
    required this.menus,
  });

  final String title;
  final List<MoreRowWidget> menus;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        MoreDialogWidget(
          menus: menus,
        )
      ],
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: SvgPicture.asset(
          AppIcons.back,
          height: 20.67.h,
          width: 10.33.w,
        ),
      ),
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
