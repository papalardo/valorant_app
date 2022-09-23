import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel with _$CardModel {
    const factory CardModel({
        required final String uuid,
        required final String displayName,
        required final String displayIcon,
        required final String smallArt,
        required final String wideArt,
        required final String largeArt,
    }) = _CardModel;
    
      factory CardModel.fromJson(Map<String, Object?> json)
      => _$CardModelFromJson(json);
}