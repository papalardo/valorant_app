import 'package:freezed_annotation/freezed_annotation.dart';

part 'lineup_attribute_model.freezed.dart';

part 'lineup_attribute_model.g.dart';

@freezed
class LineupAttributeModel with _$LineupAttributeModel {
  const factory LineupAttributeModel({
    required final String ability,
    required final String agent,
    required final String map,
    required final String side,
  }) = _LineupAttributeModel;

  factory LineupAttributeModel.fromJson(Map<String, Object?> json) =>
      _$LineupAttributeModelFromJson(json);
}
