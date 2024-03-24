import 'package:joljol/presentation/widget/w_map.dart';
import 'package:joljol/presentation/widget/w_slide.dart';
import 'package:joljol/presentation/widget/w_time.dart';
import 'package:joljol/utilities/index.dart';

class WalkScreen extends StatelessWidget {
  const WalkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayIV,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _TopPart(),
              _BottomPart(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopPart extends StatefulWidget {
  const _TopPart({super.key});

  @override
  State<_TopPart> createState() => _TopPartState();
}

class _TopPartState extends State<_TopPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 57),
      width: 347,
      height: 157,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.23),
                  color: AppColors.gray100,
                ),
                width: 87.64,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.41),
                        color: AppColors.gray300,
                      ),
                      width: 40.64,
                      height: 20,
                      child: Container(
                        alignment: Alignment.center,
                        width: 31,
                        height: 10,
                        child: Text(
                          "LIVE",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Gotham',
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      child: IconButton(
                        padding: EdgeInsets.all(5.33),
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icon/Icon_Connectivity.svg',
                          // ignore: deprecated_member_use
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 20,
                      child: Text(
                        "5",
                        style: TextStyle(
                          color: AppColors.black,
                          fontFamily: "Gotham",
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "동이름에서\n산책 중",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'PretendardBold',
                fontWeight: FontWeight.w700,
                fontSize: 30.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "2024년 1월 18일 10:00",
                style: TextStyle(
                  color: Color(0xFF262729),
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomPart extends StatefulWidget {
  const _BottomPart({super.key});

  @override
  State<_BottomPart> createState() => _BottomPartState();
}

class _BottomPartState extends State<_BottomPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TimeWidget(
                bg_color: AppColors.orange,
                icon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icon/Icon_Clock.svg',
                    // ignore: deprecated_member_use
                    color: AppColors.white,
                    width: 22,
                    height: 20.9,
                  ),
                ),
                IconMargin: [8, 15, 70, 0],
                steps: '56:34',
                textWidth: 86,
              ),
            ),
            SizedBox(width: 7),
            Container(
              width: 147,
              child: TimeWidget(
                bg_color: AppColors.black,
                icon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icon/Icon_DogPaws.svg',
                    // ignore: deprecated_member_use
                    color: AppColors.white,
                    width: 22,
                    height: 20.9,
                  ),
                ),
                IconMargin: [8, 14, 95, 0],
                steps: '124,546',
                textWidth: 116,
              ),
            ),
            SizedBox(width: 7),
            Container(
              child: MapWidget(),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 24, 0, 43),
          child: SlideWidget(),
        ),
      ],
    );
  }
}
