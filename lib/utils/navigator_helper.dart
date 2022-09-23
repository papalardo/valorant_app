import 'package:flutter_modular/flutter_modular.dart';

class NavigatorHelper {
  String getFirstRouteHistory(String path) {
    var history = Modular.to.navigateHistory;

    return history.first.name;
  }

  static bool routeIs(String path, [Function()? then]) {
    var check = Modular.to.navigateHistory.last.name == path;
    if (check == true && then != null) {
      then();
    }
    return check;
  }
}