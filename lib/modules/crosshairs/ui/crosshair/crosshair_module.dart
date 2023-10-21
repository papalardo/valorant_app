import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/bloc/crosshair_bloc.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/crosshair_screen.dart';
import 'package:valorant_app/utils/routes.dart';

class CrosshairModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.singleton<CrosshairBloc>((i) => CrosshairBloc()),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(Routes.crosshair, child: (_, arguments) {
        return CrosshairScreen(crosshair: arguments.data['crosshair']);
      })
    ];
  }
}
