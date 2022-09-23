// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weapon_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeaponStatus _$WeaponStatusFromJson(Map<String, dynamic> json) {
  return _WeaponStatusModel.fromJson(json);
}

/// @nodoc
mixin _$WeaponStatus {
  double get fireRate => throw _privateConstructorUsedError;
  double get reloadTimeSeconds => throw _privateConstructorUsedError;
  double get magazineSize => throw _privateConstructorUsedError;
  double get equipTimeSeconds => throw _privateConstructorUsedError;
  List<WeaponStatusDamage> get damageRanges =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponStatusCopyWith<WeaponStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponStatusCopyWith<$Res> {
  factory $WeaponStatusCopyWith(
          WeaponStatus value, $Res Function(WeaponStatus) then) =
      _$WeaponStatusCopyWithImpl<$Res>;
  $Res call(
      {double fireRate,
      double reloadTimeSeconds,
      double magazineSize,
      double equipTimeSeconds,
      List<WeaponStatusDamage> damageRanges});
}

/// @nodoc
class _$WeaponStatusCopyWithImpl<$Res> implements $WeaponStatusCopyWith<$Res> {
  _$WeaponStatusCopyWithImpl(this._value, this._then);

  final WeaponStatus _value;
  // ignore: unused_field
  final $Res Function(WeaponStatus) _then;

  @override
  $Res call({
    Object? fireRate = freezed,
    Object? reloadTimeSeconds = freezed,
    Object? magazineSize = freezed,
    Object? equipTimeSeconds = freezed,
    Object? damageRanges = freezed,
  }) {
    return _then(_value.copyWith(
      fireRate: fireRate == freezed
          ? _value.fireRate
          : fireRate // ignore: cast_nullable_to_non_nullable
              as double,
      reloadTimeSeconds: reloadTimeSeconds == freezed
          ? _value.reloadTimeSeconds
          : reloadTimeSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      magazineSize: magazineSize == freezed
          ? _value.magazineSize
          : magazineSize // ignore: cast_nullable_to_non_nullable
              as double,
      equipTimeSeconds: equipTimeSeconds == freezed
          ? _value.equipTimeSeconds
          : equipTimeSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      damageRanges: damageRanges == freezed
          ? _value.damageRanges
          : damageRanges // ignore: cast_nullable_to_non_nullable
              as List<WeaponStatusDamage>,
    ));
  }
}

/// @nodoc
abstract class _$$_WeaponStatusModelCopyWith<$Res>
    implements $WeaponStatusCopyWith<$Res> {
  factory _$$_WeaponStatusModelCopyWith(_$_WeaponStatusModel value,
          $Res Function(_$_WeaponStatusModel) then) =
      __$$_WeaponStatusModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double fireRate,
      double reloadTimeSeconds,
      double magazineSize,
      double equipTimeSeconds,
      List<WeaponStatusDamage> damageRanges});
}

/// @nodoc
class __$$_WeaponStatusModelCopyWithImpl<$Res>
    extends _$WeaponStatusCopyWithImpl<$Res>
    implements _$$_WeaponStatusModelCopyWith<$Res> {
  __$$_WeaponStatusModelCopyWithImpl(
      _$_WeaponStatusModel _value, $Res Function(_$_WeaponStatusModel) _then)
      : super(_value, (v) => _then(v as _$_WeaponStatusModel));

  @override
  _$_WeaponStatusModel get _value => super._value as _$_WeaponStatusModel;

  @override
  $Res call({
    Object? fireRate = freezed,
    Object? reloadTimeSeconds = freezed,
    Object? magazineSize = freezed,
    Object? equipTimeSeconds = freezed,
    Object? damageRanges = freezed,
  }) {
    return _then(_$_WeaponStatusModel(
      fireRate: fireRate == freezed
          ? _value.fireRate
          : fireRate // ignore: cast_nullable_to_non_nullable
              as double,
      reloadTimeSeconds: reloadTimeSeconds == freezed
          ? _value.reloadTimeSeconds
          : reloadTimeSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      magazineSize: magazineSize == freezed
          ? _value.magazineSize
          : magazineSize // ignore: cast_nullable_to_non_nullable
              as double,
      equipTimeSeconds: equipTimeSeconds == freezed
          ? _value.equipTimeSeconds
          : equipTimeSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      damageRanges: damageRanges == freezed
          ? _value._damageRanges
          : damageRanges // ignore: cast_nullable_to_non_nullable
              as List<WeaponStatusDamage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeaponStatusModel implements _WeaponStatusModel {
  const _$_WeaponStatusModel(
      {required this.fireRate,
      required this.reloadTimeSeconds,
      required this.magazineSize,
      required this.equipTimeSeconds,
      required final List<WeaponStatusDamage> damageRanges})
      : _damageRanges = damageRanges;

  factory _$_WeaponStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeaponStatusModelFromJson(json);

  @override
  final double fireRate;
  @override
  final double reloadTimeSeconds;
  @override
  final double magazineSize;
  @override
  final double equipTimeSeconds;
  final List<WeaponStatusDamage> _damageRanges;
  @override
  List<WeaponStatusDamage> get damageRanges {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_damageRanges);
  }

  @override
  String toString() {
    return 'WeaponStatus(fireRate: $fireRate, reloadTimeSeconds: $reloadTimeSeconds, magazineSize: $magazineSize, equipTimeSeconds: $equipTimeSeconds, damageRanges: $damageRanges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeaponStatusModel &&
            const DeepCollectionEquality().equals(other.fireRate, fireRate) &&
            const DeepCollectionEquality()
                .equals(other.reloadTimeSeconds, reloadTimeSeconds) &&
            const DeepCollectionEquality()
                .equals(other.magazineSize, magazineSize) &&
            const DeepCollectionEquality()
                .equals(other.equipTimeSeconds, equipTimeSeconds) &&
            const DeepCollectionEquality()
                .equals(other._damageRanges, _damageRanges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fireRate),
      const DeepCollectionEquality().hash(reloadTimeSeconds),
      const DeepCollectionEquality().hash(magazineSize),
      const DeepCollectionEquality().hash(equipTimeSeconds),
      const DeepCollectionEquality().hash(_damageRanges));

  @JsonKey(ignore: true)
  @override
  _$$_WeaponStatusModelCopyWith<_$_WeaponStatusModel> get copyWith =>
      __$$_WeaponStatusModelCopyWithImpl<_$_WeaponStatusModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeaponStatusModelToJson(
      this,
    );
  }
}

abstract class _WeaponStatusModel implements WeaponStatus {
  const factory _WeaponStatusModel(
          {required final double fireRate,
          required final double reloadTimeSeconds,
          required final double magazineSize,
          required final double equipTimeSeconds,
          required final List<WeaponStatusDamage> damageRanges}) =
      _$_WeaponStatusModel;

  factory _WeaponStatusModel.fromJson(Map<String, dynamic> json) =
      _$_WeaponStatusModel.fromJson;

  @override
  double get fireRate;
  @override
  double get reloadTimeSeconds;
  @override
  double get magazineSize;
  @override
  double get equipTimeSeconds;
  @override
  List<WeaponStatusDamage> get damageRanges;
  @override
  @JsonKey(ignore: true)
  _$$_WeaponStatusModelCopyWith<_$_WeaponStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}
