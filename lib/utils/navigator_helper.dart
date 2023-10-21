import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/utils/functions.dart';

class NavigatorHelper {
  String getFirstRouteHistory(String path) {
    var history = Modular.to.navigateHistory;

    return history.first.name;
  }

  static bool routeIs(String route, [Function(String route)? then]) {
    return tap<bool>(Modular.to.navigateHistory.last.name == route, (check) {
      if (check == true && then != null) then(route);
    });
  }

  static bool routeNotIs(String route, [Function(String route)? then]) {
    return tap<bool>(NavigatorHelper.routeIs(route), (check) {
      if (check == false && then != null) then(route);
    });
  }
}
