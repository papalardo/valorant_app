import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/maps/infra/data_sources/maps_data_source.dart';
import 'package:valorant_app/modules/maps/ui/bloc/maps_bloc.dart';
import 'package:valorant_app/modules/maps/ui/maps_screen.dart';
import 'package:valorant_app/utils/routes.dart';

class MapsModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.factory((i) => MapsDataSource(http: i())),
      Bind.lazySingleton((i) => MapsBloc(dataSource: i())),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(Routes.maps, child: (_, __) => const MapScreen()),
    ];
  }
}
