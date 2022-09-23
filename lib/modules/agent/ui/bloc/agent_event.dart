part of 'agent_bloc.dart';

@freezed
class AgentEvent with _$AgentEvent {
  const factory AgentEvent.fetchAgent(String agentId) = FetchAgentEvent;
  const factory AgentEvent.loadAgent(AgentModel agent) = LoadAgentEvent;
  const factory AgentEvent.selectAbility({ required int ability }) = SelectAgentAbility;
}