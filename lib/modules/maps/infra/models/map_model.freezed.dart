// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapModel _$MapModelFromJson(Map<String, dynamic> json) {
  return _MapModel.fromJson(json);
}

/// @nodoc
mixin _$MapModel {
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'splash')
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapModelCopyWith<MapModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapModelCopyWith<$Res> {
  factory $MapModelCopyWith(MapModel value, $Res Function(MapModel) then) =
      _$MapModelCopyWithImpl<$Res>;
  $Res call({String displayName, @JsonKey(name: 'splash') String image});
}

/// @nodoc
class _$MapModelCopyWithImpl<$Res> implements $MapModelCopyWith<$Res> {
  _$MapModelCopyWithImpl(this._value, this._then);

  final MapModel _value;
  // ignore: unused_field
  final $Res Function(MapModel) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MapModelCopyWith<$Res> implements $MapModelCopyWith<$Res> {
  factory _$$_MapModelCopyWith(
          _$_MapModel value, $Res Function(_$_MapModel) then) =
      __$$_MapModelCopyWithImpl<$Res>;
  @override
  $Res call({String displayName, @JsonKey(name: 'splash') String image});
}

/// @nodoc
class __$$_MapModelCopyWithImpl<$Res> extends _$MapModelCopyWithImpl<$Res>
    implements _$$_MapModelCopyWith<$Res> {
  __$$_MapModelCopyWithImpl(
      _$_MapModel _value, $Res Function(_$_MapModel) _then)
      : super(_value, (v) => _then(v as _$_MapModel));

  @override
  _$_MapModel get _value => super._value as _$_MapModel;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_MapModel(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapModel implements _MapModel {
  const _$_MapModel(
      {required this.displayName,
      @JsonKey(name: 'splash') required this.image});

  factory _$_MapModel.fromJson(Map<String, dynamic> json) =>
      _$$_MapModelFromJson(json);

  @override
  final String displayName;
  @override
  @JsonKey(name: 'splash')
  final String image;

  @override
  String toString() {
    return 'MapModel(displayName: $displayName, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapModel &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_MapModelCopyWith<_$_MapModel> get copyWith =>
      __$$_MapModelCopyWithImpl<_$_MapModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapModelToJson(
      this,
    );
  }
}

abstract class _MapModel implements MapModel {
  const factory _MapModel(
      {required final String displayName,
      @JsonKey(name: 'splash') required final String image}) = _$_MapModel;

  factory _MapModel.fromJson(Map<String, dynamic> json) = _$_MapModel.fromJson;

  @override
  String get displayName;
  @override
  @JsonKey(name: 'splash')
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_MapModelCopyWith<_$_MapModel> get copyWith =>
      throw _privateConstructorUsedError;
}
