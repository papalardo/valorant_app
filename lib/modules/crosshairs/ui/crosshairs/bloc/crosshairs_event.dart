part of 'crosshairs_bloc.dart';

@freezed
class CrosshairsEvent with _$CrosshairsEvent {
  const factory CrosshairsEvent() = _CrosshairsEvent;

  factory CrosshairsEvent.fetchPlayersCrosshairs() = FetchPlayersCrosshairs;
}