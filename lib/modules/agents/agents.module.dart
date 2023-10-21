import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/agents/ui/agents_screen.dart';
import 'package:valorant_app/modules/agents/ui/bloc/agents_bloc.dart';
import 'package:valorant_app/utils/routes.dart';

import 'infra/agents_datasource_interface.dart';
import 'infra/datasources/agents_datasource.dart';

class AgentsModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.factory<AgentsDatasourceInterface>((i) => AgentsDatasource(http: i())),
      Bind.lazySingleton<AgentsBloc>((i) => AgentsBloc(datasource: i())),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(Routes.agents, child: (_, __) => const AgentsScreen()),
    ];
  }
}
