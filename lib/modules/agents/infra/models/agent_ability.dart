import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_ability.freezed.dart';

part 'agent_ability.g.dart';

@freezed
class AgentAbility with _$AgentAbility {
  const AgentAbility._();

  const factory AgentAbility({
    required final String displayName,
    required final String slot,
    required final String description,
    required final String? displayIcon,
  }) = _AgentAbility;

  factory AgentAbility.fromJson(Map<String, Object?> json) =>
      _$AgentAbilityFromJson(json);

  String shortcutKey() {
    var shortcut = {
      'Ability1': 'Q',
      'Ability2': 'C',
      'Grenade': 'E',
      'Ultimate': 'X',
      'Passive': 'Passive',
    }[slot];
    return shortcut ?? '';
  }
}
