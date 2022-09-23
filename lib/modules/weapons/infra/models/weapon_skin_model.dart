import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/weapons/infra/models/weapon_skin_chroma_model.dart';
import 'package:valorant_app/modules/weapons/infra/models/weapon_skin_level_model.dart';

part 'weapon_skin_model.freezed.dart';

part 'weapon_skin_model.g.dart';

@freezed
class WeaponSkinModel with _$WeaponSkinModel {
  const WeaponSkinModel._();

  const factory WeaponSkinModel({
    required final String uuid,
    required final String displayName,
    required final String? displayIcon,
    required final String? wallpaper,
    required final List<WeaponSkinChromaModel> chromas,
    required final List<WeaponSkinLevelModel> levels,
  }) = _WeaponSkinModel;

  factory WeaponSkinModel.fromJson(Map<String, Object?> json) =>
      _$WeaponSkinModelFromJson(json);

  String getDisplayIcon() => defaultChroma()?.fullRender ?? chromas.first.fullRender;

  WeaponSkinChromaModel? defaultChroma() {
    return chromas.firstWhereOrNull((chroma) {
      return chroma.displayName == displayName;
    });
  }
}
