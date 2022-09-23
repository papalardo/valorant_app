import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/agents/agents.module.dart';
import 'package:valorant_app/modules/cards/cards_module.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/crosshair_module.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshairs/crosshairs_module.dart';
import 'package:valorant_app/modules/home/ui/bloc/home_bloc.dart';
import 'package:valorant_app/modules/home/ui/home_screen.dart';
import 'package:valorant_app/modules/maps/maps.module.dart';
import 'package:valorant_app/modules/weapons/weapons_module.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports {
    return [
      CrosshairsModule(),
      WeaponsModule(),
      AgentsModule(),
      MapsModule(),
      CardsModule(),
    ];
  }

  @override
  List<Bind> get binds {
    return [
      Bind.lazySingleton((i) => HomeBloc(http: Modular.get())),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute('/', child: (_, __) => const HomeScreen()),
    ];
  }
}
