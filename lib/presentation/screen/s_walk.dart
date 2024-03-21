import "package:flutter/material.dart";
import 'package:joljol/common/app_colors.dart';
import 'package:joljol/common/app_fonts.dart';

class WalkScreen extends StatelessWidget {
  const WalkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayIV,
      body: SafeArea(
        child: Container(
          child: Column(
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
      margin: EdgeInsets.fromLTRB(28, 57, 18, 600),
      width: 347,
      height: 157,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.23),
                  color: AppColors.gray100,
                ),
                width: 87.64,
                height: 30,
                child: Container(
                  height: 87.64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                          child: Text(
                            "LIVE",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Gotham',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                          width: 31,
                          height: 10,
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 8,
                        height: 20,
                        child: Text(
                          "5",
                          style: TextStyle(
                            color: Color(0xFFB8B8B8),
                            fontFamily: "Gotham",
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      )
                    ],
                  ),
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
    return Container();
  }
}
