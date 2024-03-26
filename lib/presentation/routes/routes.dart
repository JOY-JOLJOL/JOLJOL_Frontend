import 'package:joljol/presentation/screen/friends/s_friends.dart';
import 'package:joljol/presentation/screen/friends/s_friends_profile.dart';
import 'package:joljol/presentation/screen/friends/s_friends_together_routine.dart';

import '../../utilities/index.dart';

final List<GetPage> router = [
  GetPage(
    name: RoutePath.friends,
    page: () => const FriendsScreen(),
  ),
  GetPage(
    name: RoutePath.friendsProfile,
    page: () => const FriendsProfileScreen(),
  ),
  GetPage(
    name: RoutePath.friendsRoutine,
    page: () => const FriendsTogetherRoutineScreen(),
  ),
];
