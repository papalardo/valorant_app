import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/crosshairs/infra/models/crosshair.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/bloc/crosshair_bloc.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/crosshair_screen.dart';

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
      ChildRoute('/crosshair', child: (_, arguments) {
        var crosshair = arguments.data['crosshair'];
        return CrosshairScreen(crosshair: crosshair,);
      })
    ];
  }
}