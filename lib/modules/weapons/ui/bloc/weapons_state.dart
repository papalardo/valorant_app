part of 'weapons_bloc.dart';

@freezed
class WeaponsState with _$WeaponsState {
  const factory WeaponsState({
    required final ResultState<List<WeaponModel>> weaponsResponse,
    required final ResultState<WeaponModel> weaponResponse,
    required final ResultState<WeaponSkinModel> selectedSkin,
    required final ResultState<WeaponSkinChromaModel> selectedSkinChroma,
  }) = _WeaponsState;

  factory WeaponsState.initial() {
    return const WeaponsState(
      weaponsResponse: ResultState.idle(),
      weaponResponse: ResultState.idle(),
      selectedSkin: ResultState.idle(),
      selectedSkinChroma: ResultState.idle(),
    );
  }
}
