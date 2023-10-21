import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/cards/infra/data_sources/cards_data_source.dart';
import 'package:valorant_app/modules/cards/ui/cards_screen/bloc/cards_bloc.dart';
import 'package:valorant_app/modules/cards/ui/cards_screen/cards_screen.dart';
import 'package:valorant_app/utils/routes.dart';

class CardsModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.factory((i) => CardsDataSource(http: i())),
      Bind.lazySingleton<CardsBloc>((i) => CardsBloc(dataSource: i())),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(Routes.cards, child: (_, __) => const CardsScreen()),
    ];
  }
}
