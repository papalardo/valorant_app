import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/crosshairs/infra/data_sources/crosshairs_data_source.dart';
import 'package:valorant_app/modules/crosshairs/infra/models/crosshair_code.dart';
import 'package:valorant_app/utils/api/result_state.dart';

part 'crosshairs_bloc.freezed.dart';

part 'crosshairs_event.dart';

part 'crosshairs_state.dart';

class CrosshairsBloc extends Bloc<CrosshairsEvent, CrosshairsState> {
  CrosshairsDataSource dataSource;

  CrosshairsBloc({
    required this.dataSource,
  }) : super(CrosshairsState.initial()) {
    on<FetchPlayersCrosshairs>((event, emit) async {
      emit(state.copyWith(crosshairs: const ResultState.loading()));

      var response = await dataSource.playerCrosshairs();
      response.when(
        success: (data) => emit(
          state.copyWith(crosshairs: ResultState.data(data: data)),
        ),
        failure: (error) => emit(
          state.copyWith(crosshairs: ResultState.error(error: error))
        ),
      );
    });
  }
}
