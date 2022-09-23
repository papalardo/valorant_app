// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weapon_shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeaponShop _$WeaponShopFromJson(Map<String, dynamic> json) {
  return _WeaponShop.fromJson(json);
}

/// @nodoc
mixin _$WeaponShop {
  int get cost => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get categoryText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponShopCopyWith<WeaponShop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponShopCopyWith<$Res> {
  factory $WeaponShopCopyWith(
          WeaponShop value, $Res Function(WeaponShop) then) =
      _$WeaponShopCopyWithImpl<$Res>;
  $Res call({int cost, String category, String categoryText});
}

/// @nodoc
class _$WeaponShopCopyWithImpl<$Res> implements $WeaponShopCopyWith<$Res> {
  _$WeaponShopCopyWithImpl(this._value, this._then);

  final WeaponShop _value;
  // ignore: unused_field
  final $Res Function(WeaponShop) _then;

  @override
  $Res call({
    Object? cost = freezed,
    Object? category = freezed,
    Object? categoryText = freezed,
  }) {
    return _then(_value.copyWith(
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      categoryText: categoryText == freezed
          ? _value.categoryText
          : categoryText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WeaponShopCopyWith<$Res>
    implements $WeaponShopCopyWith<$Res> {
  factory _$$_WeaponShopCopyWith(
          _$_WeaponShop value, $Res Function(_$_WeaponShop) then) =
      __$$_WeaponShopCopyWithImpl<$Res>;
  @override
  $Res call({int cost, String category, String categoryText});
}

/// @nodoc
class __$$_WeaponShopCopyWithImpl<$Res> extends _$WeaponShopCopyWithImpl<$Res>
    implements _$$_WeaponShopCopyWith<$Res> {
  __$$_WeaponShopCopyWithImpl(
      _$_WeaponShop _value, $Res Function(_$_WeaponShop) _then)
      : super(_value, (v) => _then(v as _$_WeaponShop));

  @override
  _$_WeaponShop get _value => super._value as _$_WeaponShop;

  @override
  $Res call({
    Object? cost = freezed,
    Object? category = freezed,
    Object? categoryText = freezed,
  }) {
    return _then(_$_WeaponShop(
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      categoryText: categoryText == freezed
          ? _value.categoryText
          : categoryText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeaponShop implements _WeaponShop {
  const _$_WeaponShop(
      {required this.cost, required this.category, required this.categoryText});

  factory _$_WeaponShop.fromJson(Map<String, dynamic> json) =>
      _$$_WeaponShopFromJson(json);

  @override
  final int cost;
  @override
  final String category;
  @override
  final String categoryText;

  @override
  String toString() {
    return 'WeaponShop(cost: $cost, category: $category, categoryText: $categoryText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeaponShop &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.categoryText, categoryText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(categoryText));

  @JsonKey(ignore: true)
  @override
  _$$_WeaponShopCopyWith<_$_WeaponShop> get copyWith =>
      __$$_WeaponShopCopyWithImpl<_$_WeaponShop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeaponShopToJson(
      this,
    );
  }
}

abstract class _WeaponShop implements WeaponShop {
  const factory _WeaponShop(
      {required final int cost,
      required final String category,
      required final String categoryText}) = _$_WeaponShop;

  factory _WeaponShop.fromJson(Map<String, dynamic> json) =
      _$_WeaponShop.fromJson;

  @override
  int get cost;
  @override
  String get category;
  @override
  String get categoryText;
  @override
  @JsonKey(ignore: true)
  _$$_WeaponShopCopyWith<_$_WeaponShop> get copyWith =>
      throw _privateConstructorUsedError;
}
