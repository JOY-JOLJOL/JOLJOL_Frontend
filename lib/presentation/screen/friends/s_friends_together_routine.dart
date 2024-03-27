import 'package:joljol/presentation/screen/routine/w_routine_container.dart';
import 'package:joljol/presentation/widget/appbar/w_title_with_back_appbar.dart';
import 'package:joljol/utilities/index.dart';

class FriendsTogetherRoutineScreen extends StatelessWidget {
  const FriendsTogetherRoutineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleWithBackAppbar(title: "함께 한 루틴"),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 32.71.h),
                  itemBuilder: ((context, index) =>
                      const RoutineContainerWidget(
                          inProgress: true,
                          title: "이화여대 졸졸 끝장 보자!",
                          exp: "2,000exp",
                          goal: "일주일에 3만보 함께 산책하기",
                          participants: "호두의 친구들",
                          date: "2024.00.00 - 00.00")),
                  separatorBuilder: (context, index) => hEmptyBox(30.h),
                  itemCount: 10)),
        ],
      ),
    );
  }
}
