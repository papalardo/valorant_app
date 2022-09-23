// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardModel _$CardModelFromJson(Map<String, dynamic> json) {
  return _CardModel.fromJson(json);
}

/// @nodoc
mixin _$CardModel {
  String get uuid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get displayIcon => throw _privateConstructorUsedError;
  String get smallArt => throw _privateConstructorUsedError;
  String get wideArt => throw _privateConstructorUsedError;
  String get largeArt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardModelCopyWith<CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardModelCopyWith<$Res> {
  factory $CardModelCopyWith(CardModel value, $Res Function(CardModel) then) =
      _$CardModelCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String displayName,
      String displayIcon,
      String smallArt,
      String wideArt,
      String largeArt});
}

/// @nodoc
class _$CardModelCopyWithImpl<$Res> implements $CardModelCopyWith<$Res> {
  _$CardModelCopyWithImpl(this._value, this._then);

  final CardModel _value;
  // ignore: unused_field
  final $Res Function(CardModel) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? displayIcon = freezed,
    Object? smallArt = freezed,
    Object? wideArt = freezed,
    Object? largeArt = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      displayIcon: displayIcon == freezed
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String,
      smallArt: smallArt == freezed
          ? _value.smallArt
          : smallArt // ignore: cast_nullable_to_non_nullable
              as String,
      wideArt: wideArt == freezed
          ? _value.wideArt
          : wideArt // ignore: cast_nullable_to_non_nullable
              as String,
      largeArt: largeArt == freezed
          ? _value.largeArt
          : largeArt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CardModelCopyWith<$Res> implements $CardModelCopyWith<$Res> {
  factory _$$_CardModelCopyWith(
          _$_CardModel value, $Res Function(_$_CardModel) then) =
      __$$_CardModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String displayName,
      String displayIcon,
      String smallArt,
      String wideArt,
      String largeArt});
}

/// @nodoc
class __$$_CardModelCopyWithImpl<$Res> extends _$CardModelCopyWithImpl<$Res>
    implements _$$_CardModelCopyWith<$Res> {
  __$$_CardModelCopyWithImpl(
      _$_CardModel _value, $Res Function(_$_CardModel) _then)
      : super(_value, (v) => _then(v as _$_CardModel));

  @override
  _$_CardModel get _value => super._value as _$_CardModel;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? displayIcon = freezed,
    Object? smallArt = freezed,
    Object? wideArt = freezed,
    Object? largeArt = freezed,
  }) {
    return _then(_$_CardModel(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      displayIcon: displayIcon == freezed
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String,
      smallArt: smallArt == freezed
          ? _value.smallArt
          : smallArt // ignore: cast_nullable_to_non_nullable
              as String,
      wideArt: wideArt == freezed
          ? _value.wideArt
          : wideArt // ignore: cast_nullable_to_non_nullable
              as String,
      largeArt: largeArt == freezed
          ? _value.largeArt
          : largeArt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardModel implements _CardModel {
  const _$_CardModel(
      {required this.uuid,
      required this.displayName,
      required this.displayIcon,
      required this.smallArt,
      required this.wideArt,
      required this.largeArt});

  factory _$_CardModel.fromJson(Map<String, dynamic> json) =>
      _$$_CardModelFromJson(json);

  @override
  final String uuid;
  @override
  final String displayName;
  @override
  final String displayIcon;
  @override
  final String smallArt;
  @override
  final String wideArt;
  @override
  final String largeArt;

  @override
  String toString() {
    return 'CardModel(uuid: $uuid, displayName: $displayName, displayIcon: $displayIcon, smallArt: $smallArt, wideArt: $wideArt, largeArt: $largeArt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardModel &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.displayIcon, displayIcon) &&
            const DeepCollectionEquality().equals(other.smallArt, smallArt) &&
            const DeepCollectionEquality().equals(other.wideArt, wideArt) &&
            const DeepCollectionEquality().equals(other.largeArt, largeArt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(displayIcon),
      const DeepCollectionEquality().hash(smallArt),
      const DeepCollectionEquality().hash(wideArt),
      const DeepCollectionEquality().hash(largeArt));

  @JsonKey(ignore: true)
  @override
  _$$_CardModelCopyWith<_$_CardModel> get copyWith =>
      __$$_CardModelCopyWithImpl<_$_CardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardModelToJson(
      this,
    );
  }
}

abstract class _CardModel implements CardModel {
  const factory _CardModel(
      {required final String uuid,
      required final String displayName,
      required final String displayIcon,
      required final String smallArt,
      required final String wideArt,
      required final String largeArt}) = _$_CardModel;

  factory _CardModel.fromJson(Map<String, dynamic> json) =
      _$_CardModel.fromJson;

  @override
  String get uuid;
  @override
  String get displayName;
  @override
  String get displayIcon;
  @override
  String get smallArt;
  @override
  String get wideArt;
  @override
  String get largeArt;
  @override
  @JsonKey(ignore: true)
  _$$_CardModelCopyWith<_$_CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
