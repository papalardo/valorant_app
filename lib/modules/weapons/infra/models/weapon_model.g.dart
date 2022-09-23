// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeaponModel _$$_WeaponModelFromJson(Map<String, dynamic> json) =>
    _$_WeaponModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      displayIcon: json['displayIcon'] as String,
      category: json['category'] as String,
      skins: (json['skins'] as List<dynamic>)
          .map((e) => WeaponSkinModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      shopData: json['shopData'] == null
          ? null
          : WeaponShop.fromJson(json['shopData'] as Map<String, dynamic>),
      weaponStats: json['weaponStats'] == null
          ? null
          : WeaponStatus.fromJson(json['weaponStats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeaponModelToJson(_$_WeaponModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'displayIcon': instance.displayIcon,
      'category': instance.category,
      'skins': instance.skins,
      'shopData': instance.shopData,
      'weaponStats': instance.weaponStats,
    };
