// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lineup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LineupModel _$LineupModelFromJson(Map<String, dynamic> json) {
  return _LineupModel.fromJson(json);
}

/// @nodoc
mixin _$LineupModel {
  LineupAttributeModel get attributes => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get previewImageUrl => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;
  String get viewsDisplay => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineupModelCopyWith<LineupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineupModelCopyWith<$Res> {
  factory $LineupModelCopyWith(
          LineupModel value, $Res Function(LineupModel) then) =
      _$LineupModelCopyWithImpl<$Res>;
  $Res call(
      {LineupAttributeModel attributes,
      String? description,
      String previewImageUrl,
      int score,
      int views,
      String viewsDisplay,
      String title,
      String videoUrl});

  $LineupAttributeModelCopyWith<$Res> get attributes;
}

/// @nodoc
class _$LineupModelCopyWithImpl<$Res> implements $LineupModelCopyWith<$Res> {
  _$LineupModelCopyWithImpl(this._value, this._then);

  final LineupModel _value;
  // ignore: unused_field
  final $Res Function(LineupModel) _then;

  @override
  $Res call({
    Object? attributes = freezed,
    Object? description = freezed,
    Object? previewImageUrl = freezed,
    Object? score = freezed,
    Object? views = freezed,
    Object? viewsDisplay = freezed,
    Object? title = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as LineupAttributeModel,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      previewImageUrl: previewImageUrl == freezed
          ? _value.previewImageUrl
          : previewImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      viewsDisplay: viewsDisplay == freezed
          ? _value.viewsDisplay
          : viewsDisplay // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $LineupAttributeModelCopyWith<$Res> get attributes {
    return $LineupAttributeModelCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value));
    });
  }
}

/// @nodoc
abstract class _$$_LineupModelCopyWith<$Res>
    implements $LineupModelCopyWith<$Res> {
  factory _$$_LineupModelCopyWith(
          _$_LineupModel value, $Res Function(_$_LineupModel) then) =
      __$$_LineupModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {LineupAttributeModel attributes,
      String? description,
      String previewImageUrl,
      int score,
      int views,
      String viewsDisplay,
      String title,
      String videoUrl});

  @override
  $LineupAttributeModelCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_LineupModelCopyWithImpl<$Res> extends _$LineupModelCopyWithImpl<$Res>
    implements _$$_LineupModelCopyWith<$Res> {
  __$$_LineupModelCopyWithImpl(
      _$_LineupModel _value, $Res Function(_$_LineupModel) _then)
      : super(_value, (v) => _then(v as _$_LineupModel));

  @override
  _$_LineupModel get _value => super._value as _$_LineupModel;

  @override
  $Res call({
    Object? attributes = freezed,
    Object? description = freezed,
    Object? previewImageUrl = freezed,
    Object? score = freezed,
    Object? views = freezed,
    Object? viewsDisplay = freezed,
    Object? title = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_$_LineupModel(
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as LineupAttributeModel,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      previewImageUrl: previewImageUrl == freezed
          ? _value.previewImageUrl
          : previewImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      viewsDisplay: viewsDisplay == freezed
          ? _value.viewsDisplay
          : viewsDisplay // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineupModel extends _LineupModel {
  const _$_LineupModel(
      {required this.attributes,
      required this.description,
      required this.previewImageUrl,
      required this.score,
      required this.views,
      required this.viewsDisplay,
      required this.title,
      required this.videoUrl})
      : super._();

  factory _$_LineupModel.fromJson(Map<String, dynamic> json) =>
      _$$_LineupModelFromJson(json);

  @override
  final LineupAttributeModel attributes;
  @override
  final String? description;
  @override
  final String previewImageUrl;
  @override
  final int score;
  @override
  final int views;
  @override
  final String viewsDisplay;
  @override
  final String title;
  @override
  final String videoUrl;

  @override
  String toString() {
    return 'LineupModel(attributes: $attributes, description: $description, previewImageUrl: $previewImageUrl, score: $score, views: $views, viewsDisplay: $viewsDisplay, title: $title, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineupModel &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.previewImageUrl, previewImageUrl) &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality().equals(other.views, views) &&
            const DeepCollectionEquality()
                .equals(other.viewsDisplay, viewsDisplay) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(attributes),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(previewImageUrl),
      const DeepCollectionEquality().hash(score),
      const DeepCollectionEquality().hash(views),
      const DeepCollectionEquality().hash(viewsDisplay),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(videoUrl));

  @JsonKey(ignore: true)
  @override
  _$$_LineupModelCopyWith<_$_LineupModel> get copyWith =>
      __$$_LineupModelCopyWithImpl<_$_LineupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineupModelToJson(
      this,
    );
  }
}

abstract class _LineupModel extends LineupModel {
  const factory _LineupModel(
      {required final LineupAttributeModel attributes,
      required final String? description,
      required final String previewImageUrl,
      required final int score,
      required final int views,
      required final String viewsDisplay,
      required final String title,
      required final String videoUrl}) = _$_LineupModel;
  const _LineupModel._() : super._();

  factory _LineupModel.fromJson(Map<String, dynamic> json) =
      _$_LineupModel.fromJson;

  @override
  LineupAttributeModel get attributes;
  @override
  String? get description;
  @override
  String get previewImageUrl;
  @override
  int get score;
  @override
  int get views;
  @override
  String get viewsDisplay;
  @override
  String get title;
  @override
  String get videoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_LineupModelCopyWith<_$_LineupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
