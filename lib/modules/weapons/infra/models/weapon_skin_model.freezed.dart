// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weapon_skin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeaponSkinModel _$WeaponSkinModelFromJson(Map<String, dynamic> json) {
  return _WeaponSkinModel.fromJson(json);
}

/// @nodoc
mixin _$WeaponSkinModel {
  String get uuid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;
  String? get wallpaper => throw _privateConstructorUsedError;
  List<WeaponSkinChromaModel> get chromas => throw _privateConstructorUsedError;
  List<WeaponSkinLevelModel> get levels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponSkinModelCopyWith<WeaponSkinModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponSkinModelCopyWith<$Res> {
  factory $WeaponSkinModelCopyWith(
          WeaponSkinModel value, $Res Function(WeaponSkinModel) then) =
      _$WeaponSkinModelCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String displayName,
      String? displayIcon,
      String? wallpaper,
      List<WeaponSkinChromaModel> chromas,
      List<WeaponSkinLevelModel> levels});
}

/// @nodoc
class _$WeaponSkinModelCopyWithImpl<$Res>
    implements $WeaponSkinModelCopyWith<$Res> {
  _$WeaponSkinModelCopyWithImpl(this._value, this._then);

  final WeaponSkinModel _value;
  // ignore: unused_field
  final $Res Function(WeaponSkinModel) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? displayIcon = freezed,
    Object? wallpaper = freezed,
    Object? chromas = freezed,
    Object? levels = freezed,
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
              as String?,
      wallpaper: wallpaper == freezed
          ? _value.wallpaper
          : wallpaper // ignore: cast_nullable_to_non_nullable
              as String?,
      chromas: chromas == freezed
          ? _value.chromas
          : chromas // ignore: cast_nullable_to_non_nullable
              as List<WeaponSkinChromaModel>,
      levels: levels == freezed
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<WeaponSkinLevelModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_WeaponSkinModelCopyWith<$Res>
    implements $WeaponSkinModelCopyWith<$Res> {
  factory _$$_WeaponSkinModelCopyWith(
          _$_WeaponSkinModel value, $Res Function(_$_WeaponSkinModel) then) =
      __$$_WeaponSkinModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String displayName,
      String? displayIcon,
      String? wallpaper,
      List<WeaponSkinChromaModel> chromas,
      List<WeaponSkinLevelModel> levels});
}

/// @nodoc
class __$$_WeaponSkinModelCopyWithImpl<$Res>
    extends _$WeaponSkinModelCopyWithImpl<$Res>
    implements _$$_WeaponSkinModelCopyWith<$Res> {
  __$$_WeaponSkinModelCopyWithImpl(
      _$_WeaponSkinModel _value, $Res Function(_$_WeaponSkinModel) _then)
      : super(_value, (v) => _then(v as _$_WeaponSkinModel));

  @override
  _$_WeaponSkinModel get _value => super._value as _$_WeaponSkinModel;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? displayIcon = freezed,
    Object? wallpaper = freezed,
    Object? chromas = freezed,
    Object? levels = freezed,
  }) {
    return _then(_$_WeaponSkinModel(
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
              as String?,
      wallpaper: wallpaper == freezed
          ? _value.wallpaper
          : wallpaper // ignore: cast_nullable_to_non_nullable
              as String?,
      chromas: chromas == freezed
          ? _value._chromas
          : chromas // ignore: cast_nullable_to_non_nullable
              as List<WeaponSkinChromaModel>,
      levels: levels == freezed
          ? _value._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<WeaponSkinLevelModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeaponSkinModel extends _WeaponSkinModel {
  const _$_WeaponSkinModel(
      {required this.uuid,
      required this.displayName,
      required this.displayIcon,
      required this.wallpaper,
      required final List<WeaponSkinChromaModel> chromas,
      required final List<WeaponSkinLevelModel> levels})
      : _chromas = chromas,
        _levels = levels,
        super._();

  factory _$_WeaponSkinModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeaponSkinModelFromJson(json);

  @override
  final String uuid;
  @override
  final String displayName;
  @override
  final String? displayIcon;
  @override
  final String? wallpaper;
  final List<WeaponSkinChromaModel> _chromas;
  @override
  List<WeaponSkinChromaModel> get chromas {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chromas);
  }

  final List<WeaponSkinLevelModel> _levels;
  @override
  List<WeaponSkinLevelModel> get levels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_levels);
  }

  @override
  String toString() {
    return 'WeaponSkinModel(uuid: $uuid, displayName: $displayName, displayIcon: $displayIcon, wallpaper: $wallpaper, chromas: $chromas, levels: $levels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeaponSkinModel &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.displayIcon, displayIcon) &&
            const DeepCollectionEquality().equals(other.wallpaper, wallpaper) &&
            const DeepCollectionEquality().equals(other._chromas, _chromas) &&
            const DeepCollectionEquality().equals(other._levels, _levels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(displayIcon),
      const DeepCollectionEquality().hash(wallpaper),
      const DeepCollectionEquality().hash(_chromas),
      const DeepCollectionEquality().hash(_levels));

  @JsonKey(ignore: true)
  @override
  _$$_WeaponSkinModelCopyWith<_$_WeaponSkinModel> get copyWith =>
      __$$_WeaponSkinModelCopyWithImpl<_$_WeaponSkinModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeaponSkinModelToJson(
      this,
    );
  }
}

abstract class _WeaponSkinModel extends WeaponSkinModel {
  const factory _WeaponSkinModel(
      {required final String uuid,
      required final String displayName,
      required final String? displayIcon,
      required final String? wallpaper,
      required final List<WeaponSkinChromaModel> chromas,
      required final List<WeaponSkinLevelModel> levels}) = _$_WeaponSkinModel;
  const _WeaponSkinModel._() : super._();

  factory _WeaponSkinModel.fromJson(Map<String, dynamic> json) =
      _$_WeaponSkinModel.fromJson;

  @override
  String get uuid;
  @override
  String get displayName;
  @override
  String? get displayIcon;
  @override
  String? get wallpaper;
  @override
  List<WeaponSkinChromaModel> get chromas;
  @override
  List<WeaponSkinLevelModel> get levels;
  @override
  @JsonKey(ignore: true)
  _$$_WeaponSkinModelCopyWith<_$_WeaponSkinModel> get copyWith =>
      throw _privateConstructorUsedError;
}
