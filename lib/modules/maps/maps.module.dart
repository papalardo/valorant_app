import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/maps/infra/data_sources/maps_data_source.dart';
import 'package:valorant_app/modules/maps/ui/bloc/maps_bloc.dart';
import 'package:valorant_app/modules/maps/ui/maps_screen.dart';

class MapsModule extends Module {

@override
List<Bind> get binds {
  return [
    Bind.factory((i) => MapsDataSource(http: i()), export: true),
    Bind.lazySingleton((i) => MapsBloc(dataSource: i()), export: true),
  ];
}

@override
List<ModularRoute> get routes {
  return [
    ChildRoute('/maps', child: (_, __) => const MapScreen()),
  ];
}}