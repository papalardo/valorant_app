import 'package:freezed_annotation/freezed_annotation.dart';

part 'weapon_skin_chroma_model.freezed.dart';

part 'weapon_skin_chroma_model.g.dart';

@freezed
class WeaponSkinChromaModel with _$WeaponSkinChromaModel {
  const factory WeaponSkinChromaModel({
    required final String uuid,
    required final String displayName,
    required final String? displayIcon,
    required final String fullRender,
    required final String? swatch,
    required final String? streamedVideo,
  }) = _WeaponSkinChromaModel;

  factory WeaponSkinChromaModel.fromJson(Map<String, Object?> json) =>
      _$WeaponSkinChromaModelFromJson(json);
}
