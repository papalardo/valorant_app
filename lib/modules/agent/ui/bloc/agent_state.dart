part of 'agent_bloc.dart';

@freezed
class AgentState with _$AgentState {
  const factory AgentState({
    required final int selectedAbility,
    required final ResultState<AgentModel> agent,
  }) = _AgentState;
}

