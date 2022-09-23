import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_model.freezed.dart';
part 'map_model.g.dart';

@freezed
class MapModel with _$MapModel {
  const factory MapModel({
    required final String displayName,
    @JsonKey(name: 'splash')
    required final String image,
  }) = _MapModel;

  factory MapModel.fromJson(Map<String, Object?> json) =>
      _$MapModelFromJson(json);
}
