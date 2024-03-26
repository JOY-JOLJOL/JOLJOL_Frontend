import 'package:joljol/presentation/screen/friends/s_friends.dart';
import 'package:joljol/presentation/screen/friends/s_friends_profile.dart';

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
];
