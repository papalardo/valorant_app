import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/cards/infra/data_sources/cards_data_source.dart';
import 'package:valorant_app/modules/cards/ui/cards_screen/bloc/cards_bloc.dart';
import 'package:valorant_app/modules/cards/ui/cards_screen/cards_screen.dart';

class CardsModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.factory(
        (i) => CardsDataSource(http: i()),
        export: true,
      ),
      Bind.lazySingleton<CardsBloc>(
        (i) => CardsBloc(dataSource: i()),
        export: true,
      ),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute('cards', child: (_, __) => CardsScreen()),
    ];
  }
}
