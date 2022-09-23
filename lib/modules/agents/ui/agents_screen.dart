import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/agents/ui/bloc/agents_bloc.dart';
import 'package:valorant_app/modules/agents/ui/widgets/agent_grid_tile.dart';

class AgentsScreen extends StatelessWidget {
  const AgentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AgentsBloc bloc = Modular.get();
    return BlocProvider(
      create: (_) => bloc..add(const AgentsEvent.loadAgents()),
      child: BlocBuilder<AgentsBloc, AgentsState>(
        builder: (_, state) {
          return state.data.when(
            idle: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            data: (agents) => LayoutBuilder(builder: (_, constraints) {
              return GridView.builder(
                primary: false,
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  bottom: MediaQuery.of(context).padding.bottom + 30,
                ),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  childAspectRatio: 0.6,
                ),
                itemCount: agents.length,
                itemBuilder: (_, index) => AgentGridTile(agent: agents[index]),
              );
            }),
            error: (error) => Center(
              child: Text("$error"),
            ),
          );
        },
      ),
    );
  }
}
