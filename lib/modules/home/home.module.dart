import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/agents/agents.module.dart';
import 'package:valorant_app/modules/cards/cards_module.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshairs/crosshairs_module.dart';
import 'package:valorant_app/modules/home/ui/bloc/home_bloc.dart';
import 'package:valorant_app/modules/home/ui/home_screen.dart';
import 'package:valorant_app/modules/lineups/lineups_module.dart';
import 'package:valorant_app/modules/maps/maps.module.dart';
import 'package:valorant_app/modules/weapons/weapons_module.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.lazySingleton((i) => HomeBloc(http: Modular.get())),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(
        '/',
        child: (_, __) => const HomeScreen(),
        children: [
          ModuleRoute('/c', module: CrosshairsModule(), transition: TransitionType.noTransition),
          ModuleRoute('/c', module: AgentsModule(), transition: TransitionType.noTransition),
          ModuleRoute('/c', module: MapsModule(), transition: TransitionType.noTransition),
          ModuleRoute('/c', module: WeaponsModule(), transition: TransitionType.noTransition),
          ModuleRoute('/c', module: CardsModule(), transition: TransitionType.noTransition),
          ModuleRoute('/c', module: LineupsModule(), transition: TransitionType.noTransition),
        ],
      ),
    ];
  }
}
