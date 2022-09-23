import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/agent/ui/bloc/agent_bloc.dart';
import 'package:valorant_app/modules/agent/ui/widgets/agent_abilities_widget.dart';
import 'package:valorant_app/modules/agent/ui/widgets/agent_about_container_widget.dart';
import 'package:valorant_app/modules/agent/ui/widgets/agent_screen_header_widget.dart';
import 'package:valorant_app/modules/agents/ui/widgets/agent_voice_widget.dart';
import 'package:valorant_app/utils/clips/trapeze_clip.dart';
import 'package:valorant_app/utils/palette_colors.dart';
import 'package:audioplayers/audioplayers.dart';

class AgentScreen extends StatelessWidget {
  const AgentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AgentBloc>(
      create: (_) => Modular.get(),
      child: Scaffold(
        backgroundColor: PaletteColors.dark,
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                leading: const Icon(Icons.chevron_left)
                    .iconSize(32)
                    .gestures(onTap: () => Modular.to.pop()),
              ),
            ];
          },
          body: BlocBuilder<AgentBloc, AgentState>(
            builder: (BuildContext context, state) {
              return state.agent.when(
                idle: () => const SizedBox(),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                data: (agent) => MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView(
                    children: [
                      AgentScreenHeaderWidget(agent: agent),
                      AgentAboutContainerWidget(
                        child: ListView(
                          primary: false,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              spacing: 10,
                              children: [
                                Text(agent.role.displayName.toUpperCase())
                                    .fontWeight(FontWeight.w200)
                                    .bold()
                                    .fontSize(20),
                                Image.network(
                                  agent.role.displayIcon,
                                  width: 20,
                                  height: 20,
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            Text(agent.description).fontWeight(FontWeight.w400),
                            const SizedBox(height: 20),
                            AgentAbilitiesWidget(
                              agent: agent,
                              selectedAbility: state.selectedAbility,
                              onAbilityChanged: (index) {
                                BlocProvider.of<AgentBloc>(context).add(
                                  AgentEvent.selectAbility(ability: index),
                                );
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                error: (error) => Text("$error"),
              );
            },
          ),
        ),
      ),
    );
  }
}
