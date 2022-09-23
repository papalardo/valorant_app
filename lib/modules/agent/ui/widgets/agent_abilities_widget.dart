import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/agent/ui/bloc/agent_bloc.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_ability.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';
import 'package:valorant_app/modules/agents/ui/bloc/agents_bloc.dart';

class AgentAbilitiesWidget extends StatelessWidget {
  const AgentAbilitiesWidget({
    Key? key,
    required this.agent,
    required this.selectedAbility,
    required this.onAbilityChanged,
  }) : super(key: key);

  final AgentModel agent;
  final int selectedAbility;
  final Function(int) onAbilityChanged;

  @override
  Widget build(BuildContext context) {
    var _selectedAbility = agent.abilities[selectedAbility];
    return ListView(
      primary: false,
      shrinkWrap: true,
      children: [
        const Text("Abilities")
            .fontFamily('Valorant')
            .fontSize(24)
            .textAlignment(TextAlign.left),
        const SizedBox(height: 15),
        SizedBox(
          height: 50,
          child: Center(
            child: ListView.separated(
              shrinkWrap: true,
              primary: false,
              scrollDirection: Axis.horizontal,
              itemCount: agent.abilities.length,
              separatorBuilder: (_, __) => const SizedBox(width: 15),
              itemBuilder: (_, index) {
                var ability = agent.getAbilities()[index];
                if (ability.displayIcon == null) return const SizedBox();
                return InkWell(
                  onTap: () => onAbilityChanged(index),
                  child: Opacity(
                    opacity: selectedAbility == index ? 1 : 0.3,
                    child: Image.network(
                      ability.displayIcon!,
                      height: 50,
                      width: 50,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 15),
        Text(_selectedAbility.displayName)
            .textAlignment(TextAlign.center)
            .fontSize(24)
            .bold(),
        const SizedBox(height: 10),
        Text(
          "${_selectedAbility.shortcutKey()} - "
          "${_selectedAbility.description}",
        ),
      ],
    );
  }
}
