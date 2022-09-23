import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/agent/ui/agent_screen.dart';
import 'package:valorant_app/modules/agent/ui/bloc/agent_bloc.dart';
import 'package:valorant_app/modules/agents/infra/agents_datasource_interface.dart';
import 'package:valorant_app/modules/agents/infra/agents_repository_interface.dart';
import 'package:valorant_app/modules/agents/infra/datasources/agents_datasource.dart';
import 'package:valorant_app/modules/agents/infra/repositories/agents_repository.dart';

class AgentModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.factory<AgentsDatasourceInterface>(
        (i) => AgentsDatasource(http: i()),
      ),
      Bind.factory<AgentsRepositoryInterface>(
        (i) => AgentsRepository(i()),
      ),
      Bind.lazySingleton<AgentBloc>(
        (i) => AgentBloc(repository: i()),
      ),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute('/agents/:uuid', child: (_, args) {
        AgentBloc agentBloc = Modular.get();
        if (args.data?.containsKey('agent') ?? false) {
          agentBloc.add(LoadAgentEvent(args.data['agent']));
        } else if (args.params.containsKey('uuid')) {
          agentBloc.add(FetchAgentEvent(args.params['uuid']));
        }
        return const AgentScreen();
      }),
    ];
  }
}
