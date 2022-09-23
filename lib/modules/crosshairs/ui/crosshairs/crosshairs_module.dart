import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/crosshairs/infra/data_sources/crosshairs_data_source.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/crosshair_module.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshairs/bloc/crosshairs_bloc.dart';

import 'crosshairs_screen.dart';

class CrosshairsModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.lazySingleton<CrosshairsDataSource>(
        (i) => CrosshairsDataSource(http: i()),
        export: true,
      ),
      Bind.lazySingleton<CrosshairsBloc>(
        (i) => CrosshairsBloc(dataSource: i()),
        export: true,
      ),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(
        '/crosshairs',
        child: (_, __) => const CrosshairsScreen(),
      ),
    ];
  }
}
