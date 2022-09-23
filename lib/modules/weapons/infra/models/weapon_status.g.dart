// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeaponStatusModel _$$_WeaponStatusModelFromJson(Map<String, dynamic> json) =>
    _$_WeaponStatusModel(
      fireRate: (json['fireRate'] as num).toDouble(),
      reloadTimeSeconds: (json['reloadTimeSeconds'] as num).toDouble(),
      magazineSize: (json['magazineSize'] as num).toDouble(),
      equipTimeSeconds: (json['equipTimeSeconds'] as num).toDouble(),
      damageRanges: (json['damageRanges'] as List<dynamic>)
          .map((e) => WeaponStatusDamage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeaponStatusModelToJson(
        _$_WeaponStatusModel instance) =>
    <String, dynamic>{
      'fireRate': instance.fireRate,
      'reloadTimeSeconds': instance.reloadTimeSeconds,
      'magazineSize': instance.magazineSize,
      'equipTimeSeconds': instance.equipTimeSeconds,
      'damageRanges': instance.damageRanges,
    };
