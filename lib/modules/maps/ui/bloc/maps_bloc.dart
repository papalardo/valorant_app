import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/maps/infra/data_sources/maps_data_source.dart';
import 'package:valorant_app/modules/maps/infra/models/map_model.dart';
import 'package:valorant_app/utils/api/result_state.dart';

part 'maps_event.dart';

part 'maps_state.dart';

part 'maps_bloc.freezed.dart';

class MapsBloc extends Bloc<MapsEvent, MapsState> {
  MapsBloc({
    required this.dataSource,
  }) : super(const MapsState(maps: ResultState.idle())) {
    on<LoadMapsEvent>((event, emit) async {
      emit(state.copyWith(maps: const ResultState.loading()));

      var response = await dataSource.all();

      response.when(
        success: (data) => emit(
          state.copyWith(maps: ResultState.data(data: data)),
        ),
        failure: (error) => emit(
          state.copyWith(maps: ResultState.error(error: error)),
        ),
      );
    });
  }

  MapsDataSource dataSource;
}
