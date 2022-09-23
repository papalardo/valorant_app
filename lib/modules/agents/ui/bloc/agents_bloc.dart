import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/agents/infra/datasources/agents_datasource.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';
import 'package:valorant_app/services/http/http_inferface.dart';
import 'package:valorant_app/utils/api/result_state.dart';

part 'agents_state.dart';

part 'agents_event.dart';

part 'agents_bloc.freezed.dart';

class AgentsBloc extends Bloc<AgentsEvent, AgentsState> {
  HttpInterface http;

  AgentsBloc({
    required this.http,
  }) : super(const AgentsState(data: Idle())) {
    on<LoadAgents>(_homeFetchEvent);
  }

  _homeFetchEvent(
    LoadAgents event,
    Emitter<AgentsState> emit,
  ) async {
    emit(state.copyWith(data: const ResultState.loading()));
    var response = await AgentsDatasource(http: http).all();
    response.when(
      success: (agents) => emit(
        state.copyWith(data: ResultState.data(data: agents)),
      ),
      failure: (error) => emit(
        state.copyWith(data: ResultState.error(error: error)),
      ),
    );
  }
}
