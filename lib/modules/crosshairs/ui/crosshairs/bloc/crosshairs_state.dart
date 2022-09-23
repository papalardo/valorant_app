part of 'crosshairs_bloc.dart';

@freezed
class CrosshairsState with _$CrosshairsState {
    const factory CrosshairsState({
        required final ResultState<List<CrosshairCode>> crosshairs,
    }) = _CrosshairsState;

    factory CrosshairsState.initial() => CrosshairsState(
        crosshairs: ResultState.idle(),
    );
}