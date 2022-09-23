import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_role_model.freezed.dart';

part 'agent_role_model.g.dart';

@freezed
class AgentRole with _$AgentRole {
  const factory AgentRole({
    required final String displayName,
    required final String description,
    required final String displayIcon,
  }) = _AgentRole;

  factory AgentRole.fromJson(Map<String, Object?> json) =>
      _$AgentRoleFromJson(json);
}
