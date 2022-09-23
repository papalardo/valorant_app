import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/crosshairs/infra/models/crosshair.dart';
import 'package:valorant_app/modules/crosshairs/ui/utils/crosshair_bgs.dart';
import 'package:valorant_app/utils/api/result_state.dart';

part 'crosshair_bloc.freezed.dart';

part 'crosshair_event.dart';

part 'crosshair_state.dart';

class CrosshairBloc extends Bloc<CrosshairEvent, CrosshairState> {
  CrosshairBloc() : super(CrosshairState.initial()) {
    on<LoadCrosshairEvent>((event, emit) {
      emit(state.copyWith(crosshair: ResultState.data(data: event.crosshair)));
    });
    on<UpdateStateConfigEvent>((event, emit) {
      emit(event.state);
    });
  }
}
