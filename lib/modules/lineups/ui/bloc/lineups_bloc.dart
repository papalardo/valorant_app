import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/lineups/infra/data_sources/lineups_data_source.dart';
import 'package:valorant_app/modules/lineups/infra/models/lineup_model.dart';
import 'package:valorant_app/utils/api/result_state.dart';

part 'lineups_event.dart';

part 'lineups_state.dart';

part 'lineups_bloc.freezed.dart';

class LineupsBloc extends Bloc<LineupsEvent, LineupsState> {
  LineupsDataSource dataSource;

  LineupsBloc({
    required this.dataSource,
  }) : super(LineupsState.initial()) {
    on<FetchLineups>((event, emit) => _fetchLineups(emit));

    on<UpdateFilter>((event, emit) async {
      emit(state.copyWith(filters: event.filters));
      await _fetchLineups(emit);
    });
  }

  _fetchLineups(Emitter<LineupsState> emit) async {
    emit(state.copyWith(lineups: const ResultState.loading()));
    var response = await dataSource.getList(GetLineupsRequestParams(
      map: state.filters.map,
      agent: state.filters.agent,
      side: state.filters.side,
    ));

    response.when(
      success: (data) => emit(
        state.copyWith(lineups: ResultState.data(data: data)),
      ),
      failure: (error) => emit(
        state.copyWith(lineups: ResultState.error(error: error)),
      ),
    );
  }
}
