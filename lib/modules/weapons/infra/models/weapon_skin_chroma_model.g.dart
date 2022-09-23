// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_skin_chroma_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeaponSkinChromaModel _$$_WeaponSkinChromaModelFromJson(
        Map<String, dynamic> json) =>
    _$_WeaponSkinChromaModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      displayIcon: json['displayIcon'] as String?,
      fullRender: json['fullRender'] as String,
      swatch: json['swatch'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
    );

Map<String, dynamic> _$$_WeaponSkinChromaModelToJson(
        _$_WeaponSkinChromaModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'displayIcon': instance.displayIcon,
      'fullRender': instance.fullRender,
      'swatch': instance.swatch,
      'streamedVideo': instance.streamedVideo,
    };
