part of 'agents_bloc.dart';

@freezed
class AgentsState with _$AgentsState {
  const factory AgentsState({
    required ResultState<List<AgentModel>> data,
  }) = _AgentsState;
}

