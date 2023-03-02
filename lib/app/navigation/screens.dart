import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:speed_test/app/navigation/page_navigation.dart';
import 'package:speed_test/screen/speed/speed_screen.dart';
import '../../screen/home/home_screen.dart';
import '../../screen/landing/splash_screen.dart';
import '../../screen/navigation/unknown_route_screen.dart';

class Screens with PageNavigation {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  static Screens? _screens;
  late final _MainScreens main;

  Screens._() {
    main = _MainScreens();
  }

  static Screens get instance {
    _screens ??= Screens._();
    return _screens!;
  }

  static BuildContext get context => _screens!.navigatorKey.currentContext!;

  restartApp() async {
    await Get.deleteAll();
    navigatorKey.currentState!
        .pushNamedAndRemoveUntil(main.init, (route) => false);
  }
}

class _MainScreens with PageNavigation {
  final String init = "/";
  final String homeScreen = "home_screen";
  final String settingsScreen = "settings_screen";
  final String speedScreen = "speed_screen";

  Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    if (setting.name == init) {
      return goToPage(const SplashScreen(), setting);
    } else if (setting.name == homeScreen) {
      return goToPage(
        const HomeScreen(),
        setting,
      );
    } else if (setting.name == speedScreen) {
      return goToPage(
        const SpeedScreen(),
        setting,
      );
    } else {
      return goToPage(
        const UnknownRouteScreen(),
        setting,
      );
    }
  }
}
