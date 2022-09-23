import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/weapons/infra/data_sources/weapons_data_source.dart';
import 'package:valorant_app/modules/weapons/infra/weapons_data_source_interface.dart';
import 'package:valorant_app/modules/weapons/ui/bloc/weapons_bloc.dart';
import 'package:valorant_app/modules/weapons/ui/weapon_screen.dart';
import 'package:valorant_app/modules/weapons/ui/weapons_screen.dart';

class WeaponsModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.factory<WeaponsDataSourceInterface>(
        (i) => WeaponsDataSource(http: i()),
        export: true,
      ),
      Bind.lazySingleton((i) => WeaponsBloc(dataSource: i()), export: true),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute('/weapons', child: (_, __) => const WeaponsScreen()),
      ChildRoute('/weapon/:weapon', child: (_, __) => const WeaponScreen()),
    ];
  }
}
