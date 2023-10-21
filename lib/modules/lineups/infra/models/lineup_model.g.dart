// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lineup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LineupModel _$$_LineupModelFromJson(Map<String, dynamic> json) =>
    _$_LineupModel(
      attributes: LineupAttributeModel.fromJson(
          json['attributes'] as Map<String, dynamic>),
      description: json['description'] as String?,
      previewImageUrl: json['previewImageUrl'] as String,
      score: json['score'] as int,
      views: json['views'] as int,
      viewsDisplay: json['viewsDisplay'] as String,
      title: json['title'] as String,
      videoUrl: json['videoUrl'] as String,
    );

Map<String, dynamic> _$$_LineupModelToJson(_$_LineupModel instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'description': instance.description,
      'previewImageUrl': instance.previewImageUrl,
      'score': instance.score,
      'views': instance.views,
      'viewsDisplay': instance.viewsDisplay,
      'title': instance.title,
      'videoUrl': instance.videoUrl,
    };
