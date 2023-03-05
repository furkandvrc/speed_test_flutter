import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../../screen/navigation/unknown_route_screen.dart';
abstract class PageNavigation {
  PageRouteBuilder goToPageWithOutAnimation(Widget screen, RouteSettings settings) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => screen,
        settings: settings,
        transitionDuration: const Duration(milliseconds: 0),
        reverseTransitionDuration: const Duration(milliseconds: 0));
  }

  goToPage(Widget screen, RouteSettings settings) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        return CupertinoPageRoute(
          builder: (BuildContext context) => screen,
          settings: settings,
        );
      default:
        return goToPageWithOutAnimation(
          screen,
          settings,
        );
    }
  }

  returnUnknownPageRoute(RouteSettings settings) {
    return goToPage(const UnknownRouteScreen(), settings);
  }
}
