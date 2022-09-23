import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/agents/ui/agents_screen.dart';
import 'package:valorant_app/modules/agents/ui/bloc/agents_bloc.dart';

class AgentsModule extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind.lazySingleton((i) => AgentsBloc(http: Modular.get()), export: true),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute('/agents', child: (_, __) => const AgentsScreen()),
    ];
  }
}
