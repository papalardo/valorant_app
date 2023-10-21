// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lineup_attribute_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LineupAttributeModel _$LineupAttributeModelFromJson(Map<String, dynamic> json) {
  return _LineupAttributeModel.fromJson(json);
}

/// @nodoc
mixin _$LineupAttributeModel {
  String get ability => throw _privateConstructorUsedError;
  String get agent => throw _privateConstructorUsedError;
  String get map => throw _privateConstructorUsedError;
  String get side => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineupAttributeModelCopyWith<LineupAttributeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineupAttributeModelCopyWith<$Res> {
  factory $LineupAttributeModelCopyWith(LineupAttributeModel value,
          $Res Function(LineupAttributeModel) then) =
      _$LineupAttributeModelCopyWithImpl<$Res>;
  $Res call({String ability, String agent, String map, String side});
}

/// @nodoc
class _$LineupAttributeModelCopyWithImpl<$Res>
    implements $LineupAttributeModelCopyWith<$Res> {
  _$LineupAttributeModelCopyWithImpl(this._value, this._then);

  final LineupAttributeModel _value;
  // ignore: unused_field
  final $Res Function(LineupAttributeModel) _then;

  @override
  $Res call({
    Object? ability = freezed,
    Object? agent = freezed,
    Object? map = freezed,
    Object? side = freezed,
  }) {
    return _then(_value.copyWith(
      ability: ability == freezed
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as String,
      agent: agent == freezed
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as String,
      map: map == freezed
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as String,
      side: side == freezed
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LineupAttributeModelCopyWith<$Res>
    implements $LineupAttributeModelCopyWith<$Res> {
  factory _$$_LineupAttributeModelCopyWith(_$_LineupAttributeModel value,
          $Res Function(_$_LineupAttributeModel) then) =
      __$$_LineupAttributeModelCopyWithImpl<$Res>;
  @override
  $Res call({String ability, String agent, String map, String side});
}

/// @nodoc
class __$$_LineupAttributeModelCopyWithImpl<$Res>
    extends _$LineupAttributeModelCopyWithImpl<$Res>
    implements _$$_LineupAttributeModelCopyWith<$Res> {
  __$$_LineupAttributeModelCopyWithImpl(_$_LineupAttributeModel _value,
      $Res Function(_$_LineupAttributeModel) _then)
      : super(_value, (v) => _then(v as _$_LineupAttributeModel));

  @override
  _$_LineupAttributeModel get _value => super._value as _$_LineupAttributeModel;

  @override
  $Res call({
    Object? ability = freezed,
    Object? agent = freezed,
    Object? map = freezed,
    Object? side = freezed,
  }) {
    return _then(_$_LineupAttributeModel(
      ability: ability == freezed
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as String,
      agent: agent == freezed
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as String,
      map: map == freezed
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as String,
      side: side == freezed
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineupAttributeModel implements _LineupAttributeModel {
  const _$_LineupAttributeModel(
      {required this.ability,
      required this.agent,
      required this.map,
      required this.side});

  factory _$_LineupAttributeModel.fromJson(Map<String, dynamic> json) =>
      _$$_LineupAttributeModelFromJson(json);

  @override
  final String ability;
  @override
  final String agent;
  @override
  final String map;
  @override
  final String side;

  @override
  String toString() {
    return 'LineupAttributeModel(ability: $ability, agent: $agent, map: $map, side: $side)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineupAttributeModel &&
            const DeepCollectionEquality().equals(other.ability, ability) &&
            const DeepCollectionEquality().equals(other.agent, agent) &&
            const DeepCollectionEquality().equals(other.map, map) &&
            const DeepCollectionEquality().equals(other.side, side));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ability),
      const DeepCollectionEquality().hash(agent),
      const DeepCollectionEquality().hash(map),
      const DeepCollectionEquality().hash(side));

  @JsonKey(ignore: true)
  @override
  _$$_LineupAttributeModelCopyWith<_$_LineupAttributeModel> get copyWith =>
      __$$_LineupAttributeModelCopyWithImpl<_$_LineupAttributeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineupAttributeModelToJson(
      this,
    );
  }
}

abstract class _LineupAttributeModel implements LineupAttributeModel {
  const factory _LineupAttributeModel(
      {required final String ability,
      required final String agent,
      required final String map,
      required final String side}) = _$_LineupAttributeModel;

  factory _LineupAttributeModel.fromJson(Map<String, dynamic> json) =
      _$_LineupAttributeModel.fromJson;

  @override
  String get ability;
  @override
  String get agent;
  @override
  String get map;
  @override
  String get side;
  @override
  @JsonKey(ignore: true)
  _$$_LineupAttributeModelCopyWith<_$_LineupAttributeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
