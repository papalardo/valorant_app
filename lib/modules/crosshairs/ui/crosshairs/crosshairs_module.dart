import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/crosshairs/infra/data_sources/crosshairs_data_source.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshairs/bloc/crosshairs_bloc.dart';
import 'package:valorant_app/utils/routes.dart';

import 'crosshairs_screen.dart';

class CrosshairsModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.lazySingleton<CrosshairsDataSource>((i) => CrosshairsDataSource(http: i())),
      Bind.lazySingleton<CrosshairsBloc>((i) => CrosshairsBloc(dataSource: i())),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(Routes.crosshairs, child: (_, __) => const CrosshairsScreen()),
    ];
  }
}
