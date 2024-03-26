import 'package:joljol/presentation/widget/appbar/w_title_with_back_appbar.dart';
import 'package:joljol/utilities/index.dart';

class FriendsTogetherRoutineScreen extends StatelessWidget {
  const FriendsTogetherRoutineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TitleWithBackAppbar(title: "함께 한 루틴"),
    );
  }
}
