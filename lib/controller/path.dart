import 'package:get/get_navigation/get_navigation.dart';
import 'package:trace/controller/route.dart';

import '../Home/Homeview.dart';
import '../Home/track.dart';
import '../LoginCity/loginView.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: RouteName.trace,
      page: () =>  HomeView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
        name: RouteName.login,
        page: () => LoginView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.rightToLeftWithFade)
  ];
}