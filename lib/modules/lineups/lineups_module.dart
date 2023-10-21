import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/lineups/infra/data_sources/lineups_data_source.dart';
import 'package:valorant_app/modules/lineups/ui/bloc/lineups_bloc.dart';
import 'package:valorant_app/modules/lineups/ui/lineups_screen.dart';
import 'package:valorant_app/utils/routes.dart';

class LineupsModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.factory<LineupsDataSource>((i) => LineupsDataSource(http: i())),
      Bind.lazySingleton<LineupsBloc>((i) => LineupsBloc(dataSource: i())),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(Routes.lineups, child: (_, __) => const LineupsScreen()),
    ];
  }
}
