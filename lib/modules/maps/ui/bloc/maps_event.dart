part of 'maps_bloc.dart';

@freezed
class MapsEvent with _$MapsEvent {
    const factory MapsEvent({
        required final String attr,
    }) = _MapsEvent;

    factory MapsEvent.loadMaps() = LoadMapsEvent;
}