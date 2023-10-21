import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/agents/infra/agents_datasource_interface.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';
import 'package:valorant_app/utils/api/result_state.dart';

part 'agents_bloc.freezed.dart';
part 'agents_event.dart';
part 'agents_state.dart';

class AgentsBloc extends Bloc<AgentsEvent, AgentsState> {
  AgentsDatasourceInterface datasource;

  AgentsBloc({
    required this.datasource,
  }) : super(const AgentsState(data: Idle())) {
    on<LoadAgents>(_homeFetchEvent);
  }

  _homeFetchEvent(
    LoadAgents event,
    Emitter<AgentsState> emit,
  ) async {
    emit(state.copyWith(data: const ResultState.loading()));
    var response = await datasource.all();
    response.when(
      success: (agents) => emit(state.copyWith(data: ResultState.data(data: agents))),
      failure: (error) => emit(state.copyWith(data: ResultState.error(error: error))),
    );
  }
}
