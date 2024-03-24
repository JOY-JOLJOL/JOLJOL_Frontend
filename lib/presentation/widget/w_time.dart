import 'package:joljol/utilities/index.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.bg_color,
    required this.icon,
    required this.IconMargin,
    required this.steps,
    required this.textWidth,
  });
  final Color bg_color;
  final IconButton icon;
  final List<double> IconMargin;

  final String steps;
  final double textWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      height: 137,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: bg_color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
                IconMargin[0], IconMargin[1], IconMargin[2], IconMargin[3]),
            child: icon,
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: textWidth,
                  height: 30,
                  child: Text(
                    steps,
                    style: AppFonts.standard3.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
                Text(
                  '걸음 수',
                  style: AppFonts.detail2.copyWith(
                    color: AppColors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
