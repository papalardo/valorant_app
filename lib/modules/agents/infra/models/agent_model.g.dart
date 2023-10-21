// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AgentModel _$$_AgentModelFromJson(Map<String, dynamic> json) =>
    _$_AgentModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      description: json['description'] as String,
      displayIcon: json['displayIcon'] as String,
      developerName: json['developerName'] as String,
      fullPortrait: json['fullPortrait'] as String,
      backgroundImage: json['background'] as String,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => AgentAbility.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: AgentRole.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AgentModelToJson(_$_AgentModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'description': instance.description,
      'displayIcon': instance.displayIcon,
      'developerName': instance.developerName,
      'fullPortrait': instance.fullPortrait,
      'background': instance.backgroundImage,
      'abilities': instance.abilities,
      'role': instance.role,
    };
