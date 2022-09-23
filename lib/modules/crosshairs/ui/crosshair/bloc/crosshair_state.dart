part of 'crosshair_bloc.dart';

@freezed
class CrosshairState with _$CrosshairState {
  const factory CrosshairState({
    required final ResultState<Crosshair> crosshair,
    @Default(true)
    final bool innerLineLocked,
    @Default(true)
    final bool outerLineLocked,
    @Default('')
    final String importingCode,
    @Default(1)
    final int zoomPreview,
    @Default(CrosshairBgs.defaultFromAsset)
    final String bgPreview,
  }) = _CrosshairState;

  factory CrosshairState.initial() {
    return const CrosshairState(
      crosshair: ResultState.idle(),
      innerLineLocked: true,
      outerLineLocked: true,
      importingCode: '',
      zoomPreview: 1,
    );
  }
}
