// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weapon_status_damage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeaponStatusDamage _$WeaponStatusDamageFromJson(Map<String, dynamic> json) {
  return _WeaponStatusDamage.fromJson(json);
}

/// @nodoc
mixin _$WeaponStatusDamage {
  double get rangeStartMeters => throw _privateConstructorUsedError;
  double get rangeEndMeters => throw _privateConstructorUsedError;
  double get headDamage => throw _privateConstructorUsedError;
  double get bodyDamage => throw _privateConstructorUsedError;
  double get legDamage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponStatusDamageCopyWith<WeaponStatusDamage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponStatusDamageCopyWith<$Res> {
  factory $WeaponStatusDamageCopyWith(
          WeaponStatusDamage value, $Res Function(WeaponStatusDamage) then) =
      _$WeaponStatusDamageCopyWithImpl<$Res>;
  $Res call(
      {double rangeStartMeters,
      double rangeEndMeters,
      double headDamage,
      double bodyDamage,
      double legDamage});
}

/// @nodoc
class _$WeaponStatusDamageCopyWithImpl<$Res>
    implements $WeaponStatusDamageCopyWith<$Res> {
  _$WeaponStatusDamageCopyWithImpl(this._value, this._then);

  final WeaponStatusDamage _value;
  // ignore: unused_field
  final $Res Function(WeaponStatusDamage) _then;

  @override
  $Res call({
    Object? rangeStartMeters = freezed,
    Object? rangeEndMeters = freezed,
    Object? headDamage = freezed,
    Object? bodyDamage = freezed,
    Object? legDamage = freezed,
  }) {
    return _then(_value.copyWith(
      rangeStartMeters: rangeStartMeters == freezed
          ? _value.rangeStartMeters
          : rangeStartMeters // ignore: cast_nullable_to_non_nullable
              as double,
      rangeEndMeters: rangeEndMeters == freezed
          ? _value.rangeEndMeters
          : rangeEndMeters // ignore: cast_nullable_to_non_nullable
              as double,
      headDamage: headDamage == freezed
          ? _value.headDamage
          : headDamage // ignore: cast_nullable_to_non_nullable
              as double,
      bodyDamage: bodyDamage == freezed
          ? _value.bodyDamage
          : bodyDamage // ignore: cast_nullable_to_non_nullable
              as double,
      legDamage: legDamage == freezed
          ? _value.legDamage
          : legDamage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_WeaponStatusDamageCopyWith<$Res>
    implements $WeaponStatusDamageCopyWith<$Res> {
  factory _$$_WeaponStatusDamageCopyWith(_$_WeaponStatusDamage value,
          $Res Function(_$_WeaponStatusDamage) then) =
      __$$_WeaponStatusDamageCopyWithImpl<$Res>;
  @override
  $Res call(
      {double rangeStartMeters,
      double rangeEndMeters,
      double headDamage,
      double bodyDamage,
      double legDamage});
}

/// @nodoc
class __$$_WeaponStatusDamageCopyWithImpl<$Res>
    extends _$WeaponStatusDamageCopyWithImpl<$Res>
    implements _$$_WeaponStatusDamageCopyWith<$Res> {
  __$$_WeaponStatusDamageCopyWithImpl(
      _$_WeaponStatusDamage _value, $Res Function(_$_WeaponStatusDamage) _then)
      : super(_value, (v) => _then(v as _$_WeaponStatusDamage));

  @override
  _$_WeaponStatusDamage get _value => super._value as _$_WeaponStatusDamage;

  @override
  $Res call({
    Object? rangeStartMeters = freezed,
    Object? rangeEndMeters = freezed,
    Object? headDamage = freezed,
    Object? bodyDamage = freezed,
    Object? legDamage = freezed,
  }) {
    return _then(_$_WeaponStatusDamage(
      rangeStartMeters: rangeStartMeters == freezed
          ? _value.rangeStartMeters
          : rangeStartMeters // ignore: cast_nullable_to_non_nullable
              as double,
      rangeEndMeters: rangeEndMeters == freezed
          ? _value.rangeEndMeters
          : rangeEndMeters // ignore: cast_nullable_to_non_nullable
              as double,
      headDamage: headDamage == freezed
          ? _value.headDamage
          : headDamage // ignore: cast_nullable_to_non_nullable
              as double,
      bodyDamage: bodyDamage == freezed
          ? _value.bodyDamage
          : bodyDamage // ignore: cast_nullable_to_non_nullable
              as double,
      legDamage: legDamage == freezed
          ? _value.legDamage
          : legDamage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeaponStatusDamage implements _WeaponStatusDamage {
  const _$_WeaponStatusDamage(
      {required this.rangeStartMeters,
      required this.rangeEndMeters,
      required this.headDamage,
      required this.bodyDamage,
      required this.legDamage});

  factory _$_WeaponStatusDamage.fromJson(Map<String, dynamic> json) =>
      _$$_WeaponStatusDamageFromJson(json);

  @override
  final double rangeStartMeters;
  @override
  final double rangeEndMeters;
  @override
  final double headDamage;
  @override
  final double bodyDamage;
  @override
  final double legDamage;

  @override
  String toString() {
    return 'WeaponStatusDamage(rangeStartMeters: $rangeStartMeters, rangeEndMeters: $rangeEndMeters, headDamage: $headDamage, bodyDamage: $bodyDamage, legDamage: $legDamage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeaponStatusDamage &&
            const DeepCollectionEquality()
                .equals(other.rangeStartMeters, rangeStartMeters) &&
            const DeepCollectionEquality()
                .equals(other.rangeEndMeters, rangeEndMeters) &&
            const DeepCollectionEquality()
                .equals(other.headDamage, headDamage) &&
            const DeepCollectionEquality()
                .equals(other.bodyDamage, bodyDamage) &&
            const DeepCollectionEquality().equals(other.legDamage, legDamage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rangeStartMeters),
      const DeepCollectionEquality().hash(rangeEndMeters),
      const DeepCollectionEquality().hash(headDamage),
      const DeepCollectionEquality().hash(bodyDamage),
      const DeepCollectionEquality().hash(legDamage));

  @JsonKey(ignore: true)
  @override
  _$$_WeaponStatusDamageCopyWith<_$_WeaponStatusDamage> get copyWith =>
      __$$_WeaponStatusDamageCopyWithImpl<_$_WeaponStatusDamage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeaponStatusDamageToJson(
      this,
    );
  }
}

abstract class _WeaponStatusDamage implements WeaponStatusDamage {
  const factory _WeaponStatusDamage(
      {required final double rangeStartMeters,
      required final double rangeEndMeters,
      required final double headDamage,
      required final double bodyDamage,
      required final double legDamage}) = _$_WeaponStatusDamage;

  factory _WeaponStatusDamage.fromJson(Map<String, dynamic> json) =
      _$_WeaponStatusDamage.fromJson;

  @override
  double get rangeStartMeters;
  @override
  double get rangeEndMeters;
  @override
  double get headDamage;
  @override
  double get bodyDamage;
  @override
  double get legDamage;
  @override
  @JsonKey(ignore: true)
  _$$_WeaponStatusDamageCopyWith<_$_WeaponStatusDamage> get copyWith =>
      throw _privateConstructorUsedError;
}
