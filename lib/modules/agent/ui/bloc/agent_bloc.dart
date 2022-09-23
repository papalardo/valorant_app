import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/agents/infra/agents_repository_interface.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';
import 'package:valorant_app/utils/api/result_state.dart';

part 'agent_bloc.freezed.dart';

part 'agent_event.dart';

part 'agent_state.dart';

class AgentBloc extends Bloc<AgentEvent, AgentState> {
  AgentsRepositoryInterface repository;

  AgentBloc({
    required this.repository,
  }) : super(const AgentState(selectedAbility: 0, agent: ResultState.idle())) {
    on<LoadAgentEvent>(_loadAgentEvent);
    on<FetchAgentEvent>(_fetchAgentEvent);
    on<SelectAgentAbility>(_selectAgentAbility);
  }

  _loadAgentEvent(
    LoadAgentEvent event,
    Emitter<AgentState> emit,
  ) {
    emit(state.copyWith(agent: ResultState.data(data: event.agent)));
  }

  _fetchAgentEvent(
    FetchAgentEvent event,
    Emitter<AgentState> emit,
  ) async {
    emit(state.copyWith(agent: const ResultState.loading()));

    var response = await repository.findById(event.agentId);
    response.when(
      success: (data) => emit(
        state.copyWith(agent: ResultState.data(data: data)),
      ),
      failure: (error) => emit(
        state.copyWith(agent: ResultState.error(error: error)),
      ),
    );
  }

  _selectAgentAbility(
    SelectAgentAbility event,
    Emitter<AgentState> emit,
  ) {
    emit(state.copyWith(selectedAbility: event.ability));
  }
}
