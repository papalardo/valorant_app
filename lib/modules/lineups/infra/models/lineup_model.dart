import 'package:freezed_annotation/freezed_annotation.dart';

import 'lineup_attribute_model.dart';

part 'lineup_model.freezed.dart';

part 'lineup_model.g.dart';

@freezed
class LineupModel with _$LineupModel {
  const LineupModel._();

  const factory LineupModel({
    required final LineupAttributeModel attributes,
    required final String? description,
    required final String previewImageUrl,
    required final int score,
    required final int views,
    required final String viewsDisplay,
    required final String title,
    required final String videoUrl,
  }) = _LineupModel;

  factory LineupModel.fromJson(Map<String, Object?> json) =>
      _$LineupModelFromJson(json);

  String getVideoUrl() {
    return 'https://customer-9h7e8ahl6hivmjb6.cloudflarestream.com/$videoUrl/manifest/video.m3u8';
  }
}
