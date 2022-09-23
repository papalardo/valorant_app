part of 'weapons_bloc.dart';

@freezed
class WeaponsEvent with _$WeaponsEvent {
  const factory WeaponsEvent() = _WeaponsEvent;

  factory WeaponsEvent.fetchWeapons() = FetchWeaponsEvent;

  factory WeaponsEvent.clearWeapon() = ClearWeaponEvent;

  factory WeaponsEvent.selectWeaponSkin(
    WeaponSkinModel skin,
  ) = SelectWeaponSkinEvent;

  factory WeaponsEvent.selectWeaponSkinChroma(
    ResultState<WeaponSkinChromaModel> chromaResult,
  ) = SelectWeaponSkinChromaEvent;

  factory WeaponsEvent.loadWeapon({
    required WeaponModel weapon,
  }) = LoadWeaponEvent;

  factory WeaponsEvent.fetchWeapon({
    required String weaponId,
  }) = FetchWeaponEvent;
}
