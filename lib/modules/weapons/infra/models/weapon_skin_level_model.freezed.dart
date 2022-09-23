// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weapon_skin_level_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeaponSkinLevelModel _$WeaponSkinLevelModelFromJson(Map<String, dynamic> json) {
  return _WeaponSkinLevelModel.fromJson(json);
}

/// @nodoc
mixin _$WeaponSkinLevelModel {
  String get uuid => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;
  String? get streamedVideo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponSkinLevelModelCopyWith<WeaponSkinLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponSkinLevelModelCopyWith<$Res> {
  factory $WeaponSkinLevelModelCopyWith(WeaponSkinLevelModel value,
          $Res Function(WeaponSkinLevelModel) then) =
      _$WeaponSkinLevelModelCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String? displayName,
      String? displayIcon,
      String? streamedVideo});
}

/// @nodoc
class _$WeaponSkinLevelModelCopyWithImpl<$Res>
    implements $WeaponSkinLevelModelCopyWith<$Res> {
  _$WeaponSkinLevelModelCopyWithImpl(this._value, this._then);

  final WeaponSkinLevelModel _value;
  // ignore: unused_field
  final $Res Function(WeaponSkinLevelModel) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? displayIcon = freezed,
    Object? streamedVideo = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: displayIcon == freezed
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      streamedVideo: streamedVideo == freezed
          ? _value.streamedVideo
          : streamedVideo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WeaponSkinLevelModelCopyWith<$Res>
    implements $WeaponSkinLevelModelCopyWith<$Res> {
  factory _$$_WeaponSkinLevelModelCopyWith(_$_WeaponSkinLevelModel value,
          $Res Function(_$_WeaponSkinLevelModel) then) =
      __$$_WeaponSkinLevelModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String? displayName,
      String? displayIcon,
      String? streamedVideo});
}

/// @nodoc
class __$$_WeaponSkinLevelModelCopyWithImpl<$Res>
    extends _$WeaponSkinLevelModelCopyWithImpl<$Res>
    implements _$$_WeaponSkinLevelModelCopyWith<$Res> {
  __$$_WeaponSkinLevelModelCopyWithImpl(_$_WeaponSkinLevelModel _value,
      $Res Function(_$_WeaponSkinLevelModel) _then)
      : super(_value, (v) => _then(v as _$_WeaponSkinLevelModel));

  @override
  _$_WeaponSkinLevelModel get _value => super._value as _$_WeaponSkinLevelModel;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? displayIcon = freezed,
    Object? streamedVideo = freezed,
  }) {
    return _then(_$_WeaponSkinLevelModel(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: displayIcon == freezed
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      streamedVideo: streamedVideo == freezed
          ? _value.streamedVideo
          : streamedVideo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeaponSkinLevelModel implements _WeaponSkinLevelModel {
  const _$_WeaponSkinLevelModel(
      {required this.uuid,
      required this.displayName,
      required this.displayIcon,
      required this.streamedVideo});

  factory _$_WeaponSkinLevelModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeaponSkinLevelModelFromJson(json);

  @override
  final String uuid;
  @override
  final String? displayName;
  @override
  final String? displayIcon;
  @override
  final String? streamedVideo;

  @override
  String toString() {
    return 'WeaponSkinLevelModel(uuid: $uuid, displayName: $displayName, displayIcon: $displayIcon, streamedVideo: $streamedVideo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeaponSkinLevelModel &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.displayIcon, displayIcon) &&
            const DeepCollectionEquality()
                .equals(other.streamedVideo, streamedVideo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(displayIcon),
      const DeepCollectionEquality().hash(streamedVideo));

  @JsonKey(ignore: true)
  @override
  _$$_WeaponSkinLevelModelCopyWith<_$_WeaponSkinLevelModel> get copyWith =>
      __$$_WeaponSkinLevelModelCopyWithImpl<_$_WeaponSkinLevelModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeaponSkinLevelModelToJson(
      this,
    );
  }
}

abstract class _WeaponSkinLevelModel implements WeaponSkinLevelModel {
  const factory _WeaponSkinLevelModel(
      {required final String uuid,
      required final String? displayName,
      required final String? displayIcon,
      required final String? streamedVideo}) = _$_WeaponSkinLevelModel;

  factory _WeaponSkinLevelModel.fromJson(Map<String, dynamic> json) =
      _$_WeaponSkinLevelModel.fromJson;

  @override
  String get uuid;
  @override
  String? get displayName;
  @override
  String? get displayIcon;
  @override
  String? get streamedVideo;
  @override
  @JsonKey(ignore: true)
  _$$_WeaponSkinLevelModelCopyWith<_$_WeaponSkinLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}
