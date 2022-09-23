// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_voice_line_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AgentVoiceLineModel _$$_AgentVoiceLineModelFromJson(
        Map<String, dynamic> json) =>
    _$_AgentVoiceLineModel(
      mediaList: (json['mediaList'] as List<dynamic>)
          .map((e) => AgentVoiceMediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AgentVoiceLineModelToJson(
        _$_AgentVoiceLineModel instance) =>
    <String, dynamic>{
      'mediaList': instance.mediaList,
    };
