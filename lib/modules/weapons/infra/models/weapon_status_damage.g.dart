// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_status_damage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeaponStatusDamage _$$_WeaponStatusDamageFromJson(
        Map<String, dynamic> json) =>
    _$_WeaponStatusDamage(
      rangeStartMeters: (json['rangeStartMeters'] as num).toDouble(),
      rangeEndMeters: (json['rangeEndMeters'] as num).toDouble(),
      headDamage: (json['headDamage'] as num).toDouble(),
      bodyDamage: (json['bodyDamage'] as num).toDouble(),
      legDamage: (json['legDamage'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WeaponStatusDamageToJson(
        _$_WeaponStatusDamage instance) =>
    <String, dynamic>{
      'rangeStartMeters': instance.rangeStartMeters,
      'rangeEndMeters': instance.rangeEndMeters,
      'headDamage': instance.headDamage,
      'bodyDamage': instance.bodyDamage,
      'legDamage': instance.legDamage,
    };
