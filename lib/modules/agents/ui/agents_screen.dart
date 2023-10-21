import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_app/modules/agents/ui/bloc/agents_bloc.dart';
import 'package:valorant_app/modules/agents/ui/widgets/agent_grid_tile.dart';
import 'package:valorant_app/utils/widgets/safe_area_custom_scroll_view.dart';

class AgentsScreen extends StatefulWidget {
  const AgentsScreen({Key? key}) : super(key: key);

  @override
  State<AgentsScreen> createState() => _AgentsScreenState();
}

class _AgentsScreenState extends State<AgentsScreen> {
  AgentsBloc get bloc => Modular.get();

  @override
  void initState() {
    bloc.add(const AgentsEvent.loadAgents());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgentsBloc, AgentsState>(
      bloc: bloc,
      builder: (_, state) {
        return state.data.when(
          idle: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (agents) => SafeAreaCustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (_, index) => AgentGridTile(agent: agents[index]),
                    childCount: agents.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    childAspectRatio: 0.6,
                  ),
                ),
              ),
            ],
          ),
          error: (error) => Center(child: Text("$error")),
        );
      },
    );
  }
}
