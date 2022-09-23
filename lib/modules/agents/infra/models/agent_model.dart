import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_ability.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_role_model.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_voice_line_model.dart';

part 'agent_model.freezed.dart';

part 'agent_model.g.dart';

@freezed
class AgentModel with _$AgentModel {
  const AgentModel._();

  const factory AgentModel({
    required final String uuid,
    required final String displayName,
    required final String description,
    required final String displayIcon,
    required final String developerName,
    required final String fullPortrait,
    @JsonKey(name: 'background')
    required final String backgroundImage,
    required final List<AgentAbility> abilities,
    required final AgentVoiceLineModel voiceLine,
    required final AgentRole role,
  }) = _AgentModel;

  factory AgentModel.fromJson(Map<String, Object?> json) =>
      _$AgentModelFromJson(json);

  List<AgentAbility> getAbilities() => abilities.sortedBy((ability) => ability.slot);
}
