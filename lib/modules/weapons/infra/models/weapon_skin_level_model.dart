import 'package:freezed_annotation/freezed_annotation.dart';

part 'weapon_skin_level_model.freezed.dart';
part 'weapon_skin_level_model.g.dart';

@freezed
class WeaponSkinLevelModel with _$WeaponSkinLevelModel {
    const factory WeaponSkinLevelModel({
        required final String uuid,
        required final String? displayName,
        required final String? displayIcon,
        required final String? streamedVideo,
    }) = _WeaponSkinLevelModel;

      factory WeaponSkinLevelModel.fromJson(Map<String, Object?> json)
      => _$WeaponSkinLevelModelFromJson(json);
}