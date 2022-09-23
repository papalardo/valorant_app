// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_skin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeaponSkinModel _$$_WeaponSkinModelFromJson(Map<String, dynamic> json) =>
    _$_WeaponSkinModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      displayIcon: json['displayIcon'] as String?,
      wallpaper: json['wallpaper'] as String?,
      chromas: (json['chromas'] as List<dynamic>)
          .map((e) => WeaponSkinChromaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      levels: (json['levels'] as List<dynamic>)
          .map((e) => WeaponSkinLevelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeaponSkinModelToJson(_$_WeaponSkinModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'displayIcon': instance.displayIcon,
      'wallpaper': instance.wallpaper,
      'chromas': instance.chromas,
      'levels': instance.levels,
    };
