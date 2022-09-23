part of 'crosshair_bloc.dart';

@freezed
class CrosshairEvent with _$CrosshairEvent {
  const factory CrosshairEvent() = _CrosshairEvent;

  factory CrosshairEvent.loadCrosshair({
    required Crosshair crosshair,
  }) = LoadCrosshairEvent;

  factory CrosshairEvent.updateStateConfig({
    required CrosshairState state,
  }) = UpdateStateConfigEvent;
}
