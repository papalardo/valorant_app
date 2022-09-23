// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weapon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeaponModel _$WeaponModelFromJson(Map<String, dynamic> json) {
  return _WeaponModel.fromJson(json);
}

/// @nodoc
mixin _$WeaponModel {
  String get uuid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get displayIcon => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<WeaponSkinModel> get skins => throw _privateConstructorUsedError;
  WeaponShop? get shopData => throw _privateConstructorUsedError;
  WeaponStatus? get weaponStats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponModelCopyWith<WeaponModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponModelCopyWith<$Res> {
  factory $WeaponModelCopyWith(
          WeaponModel value, $Res Function(WeaponModel) then) =
      _$WeaponModelCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String displayName,
      String displayIcon,
      String category,
      List<WeaponSkinModel> skins,
      WeaponShop? shopData,
      WeaponStatus? weaponStats});

  $WeaponShopCopyWith<$Res>? get shopData;
  $WeaponStatusCopyWith<$Res>? get weaponStats;
}

/// @nodoc
class _$WeaponModelCopyWithImpl<$Res> implements $WeaponModelCopyWith<$Res> {
  _$WeaponModelCopyWithImpl(this._value, this._then);

  final WeaponModel _value;
  // ignore: unused_field
  final $Res Function(WeaponModel) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? displayIcon = freezed,
    Object? category = freezed,
    Object? skins = freezed,
    Object? shopData = freezed,
    Object? weaponStats = freezed,
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
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      skins: skins == freezed
          ? _value.skins
          : skins // ignore: cast_nullable_to_non_nullable
              as List<WeaponSkinModel>,
      shopData: shopData == freezed
          ? _value.shopData
          : shopData // ignore: cast_nullable_to_non_nullable
              as WeaponShop?,
      weaponStats: weaponStats == freezed
          ? _value.weaponStats
          : weaponStats // ignore: cast_nullable_to_non_nullable
              as WeaponStatus?,
    ));
  }

  @override
  $WeaponShopCopyWith<$Res>? get shopData {
    if (_value.shopData == null) {
      return null;
    }

    return $WeaponShopCopyWith<$Res>(_value.shopData!, (value) {
      return _then(_value.copyWith(shopData: value));
    });
  }

  @override
  $WeaponStatusCopyWith<$Res>? get weaponStats {
    if (_value.weaponStats == null) {
      return null;
    }

    return $WeaponStatusCopyWith<$Res>(_value.weaponStats!, (value) {
      return _then(_value.copyWith(weaponStats: value));
    });
  }
}

/// @nodoc
abstract class _$$_WeaponModelCopyWith<$Res>
    implements $WeaponModelCopyWith<$Res> {
  factory _$$_WeaponModelCopyWith(
          _$_WeaponModel value, $Res Function(_$_WeaponModel) then) =
      __$$_WeaponModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String displayName,
      String displayIcon,
      String category,
      List<WeaponSkinModel> skins,
      WeaponShop? shopData,
      WeaponStatus? weaponStats});

  @override
  $WeaponShopCopyWith<$Res>? get shopData;
  @override
  $WeaponStatusCopyWith<$Res>? get weaponStats;
}

/// @nodoc
class __$$_WeaponModelCopyWithImpl<$Res> extends _$WeaponModelCopyWithImpl<$Res>
    implements _$$_WeaponModelCopyWith<$Res> {
  __$$_WeaponModelCopyWithImpl(
      _$_WeaponModel _value, $Res Function(_$_WeaponModel) _then)
      : super(_value, (v) => _then(v as _$_WeaponModel));

  @override
  _$_WeaponModel get _value => super._value as _$_WeaponModel;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? displayIcon = freezed,
    Object? category = freezed,
    Object? skins = freezed,
    Object? shopData = freezed,
    Object? weaponStats = freezed,
  }) {
    return _then(_$_WeaponModel(
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
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      skins: skins == freezed
          ? _value._skins
          : skins // ignore: cast_nullable_to_non_nullable
              as List<WeaponSkinModel>,
      shopData: shopData == freezed
          ? _value.shopData
          : shopData // ignore: cast_nullable_to_non_nullable
              as WeaponShop?,
      weaponStats: weaponStats == freezed
          ? _value.weaponStats
          : weaponStats // ignore: cast_nullable_to_non_nullable
              as WeaponStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeaponModel extends _WeaponModel {
  const _$_WeaponModel(
      {required this.uuid,
      required this.displayName,
      required this.displayIcon,
      required this.category,
      required final List<WeaponSkinModel> skins,
      required this.shopData,
      required this.weaponStats})
      : _skins = skins,
        super._();

  factory _$_WeaponModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeaponModelFromJson(json);

  @override
  final String uuid;
  @override
  final String displayName;
  @override
  final String displayIcon;
  @override
  final String category;
  final List<WeaponSkinModel> _skins;
  @override
  List<WeaponSkinModel> get skins {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skins);
  }

  @override
  final WeaponShop? shopData;
  @override
  final WeaponStatus? weaponStats;

  @override
  String toString() {
    return 'WeaponModel(uuid: $uuid, displayName: $displayName, displayIcon: $displayIcon, category: $category, skins: $skins, shopData: $shopData, weaponStats: $weaponStats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeaponModel &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.displayIcon, displayIcon) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other._skins, _skins) &&
            const DeepCollectionEquality().equals(other.shopData, shopData) &&
            const DeepCollectionEquality()
                .equals(other.weaponStats, weaponStats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(displayIcon),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(_skins),
      const DeepCollectionEquality().hash(shopData),
      const DeepCollectionEquality().hash(weaponStats));

  @JsonKey(ignore: true)
  @override
  _$$_WeaponModelCopyWith<_$_WeaponModel> get copyWith =>
      __$$_WeaponModelCopyWithImpl<_$_WeaponModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeaponModelToJson(
      this,
    );
  }
}

abstract class _WeaponModel extends WeaponModel {
  const factory _WeaponModel(
      {required final String uuid,
      required final String displayName,
      required final String displayIcon,
      required final String category,
      required final List<WeaponSkinModel> skins,
      required final WeaponShop? shopData,
      required final WeaponStatus? weaponStats}) = _$_WeaponModel;
  const _WeaponModel._() : super._();

  factory _WeaponModel.fromJson(Map<String, dynamic> json) =
      _$_WeaponModel.fromJson;

  @override
  String get uuid;
  @override
  String get displayName;
  @override
  String get displayIcon;
  @override
  String get category;
  @override
  List<WeaponSkinModel> get skins;
  @override
  WeaponShop? get shopData;
  @override
  WeaponStatus? get weaponStats;
  @override
  @JsonKey(ignore: true)
  _$$_WeaponModelCopyWith<_$_WeaponModel> get copyWith =>
      throw _privateConstructorUsedError;
}
