import 'package:joljol/presentation/screen/friends/s_friends.dart';
import 'package:joljol/presentation/screen/friends/s_friends_profile.dart';
import 'package:joljol/presentation/screen/friends/s_friends_together_routine.dart';
import 'package:joljol/presentation/screen/setting/s_setting.dart';
import 'package:joljol/presentation/screen/setting/s_user_info.dart';

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
  GetPage(
    name: RoutePath.setting,
    page: () => const SettingScreen(),
  ),
  GetPage(
    name: RoutePath.userInfo,
    page: () => const UserInfoScreen(),
  ),
];
