part of 'maps_bloc.dart';

@freezed
class MapsState with _$MapsState {
    const factory MapsState({
        required final ResultState<List<MapModel>> maps,
    }) = _MapsState;
}