// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agent_ability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgentAbility _$AgentAbilityFromJson(Map<String, dynamic> json) {
  return _AgentAbility.fromJson(json);
}

/// @nodoc
mixin _$AgentAbility {
  String get displayName => throw _privateConstructorUsedError;
  String get slot => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentAbilityCopyWith<AgentAbility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentAbilityCopyWith<$Res> {
  factory $AgentAbilityCopyWith(
          AgentAbility value, $Res Function(AgentAbility) then) =
      _$AgentAbilityCopyWithImpl<$Res>;
  $Res call(
      {String displayName,
      String slot,
      String description,
      String? displayIcon});
}

/// @nodoc
class _$AgentAbilityCopyWithImpl<$Res> implements $AgentAbilityCopyWith<$Res> {
  _$AgentAbilityCopyWithImpl(this._value, this._then);

  final AgentAbility _value;
  // ignore: unused_field
  final $Res Function(AgentAbility) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? slot = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      displayIcon: displayIcon == freezed
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AgentAbilityCopyWith<$Res>
    implements $AgentAbilityCopyWith<$Res> {
  factory _$$_AgentAbilityCopyWith(
          _$_AgentAbility value, $Res Function(_$_AgentAbility) then) =
      __$$_AgentAbilityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String displayName,
      String slot,
      String description,
      String? displayIcon});
}

/// @nodoc
class __$$_AgentAbilityCopyWithImpl<$Res>
    extends _$AgentAbilityCopyWithImpl<$Res>
    implements _$$_AgentAbilityCopyWith<$Res> {
  __$$_AgentAbilityCopyWithImpl(
      _$_AgentAbility _value, $Res Function(_$_AgentAbility) _then)
      : super(_value, (v) => _then(v as _$_AgentAbility));

  @override
  _$_AgentAbility get _value => super._value as _$_AgentAbility;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? slot = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
  }) {
    return _then(_$_AgentAbility(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      displayIcon: displayIcon == freezed
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgentAbility extends _AgentAbility {
  const _$_AgentAbility(
      {required this.displayName,
      required this.slot,
      required this.description,
      required this.displayIcon})
      : super._();

  factory _$_AgentAbility.fromJson(Map<String, dynamic> json) =>
      _$$_AgentAbilityFromJson(json);

  @override
  final String displayName;
  @override
  final String slot;
  @override
  final String description;
  @override
  final String? displayIcon;

  @override
  String toString() {
    return 'AgentAbility(displayName: $displayName, slot: $slot, description: $description, displayIcon: $displayIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgentAbility &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.slot, slot) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.displayIcon, displayIcon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(slot),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(displayIcon));

  @JsonKey(ignore: true)
  @override
  _$$_AgentAbilityCopyWith<_$_AgentAbility> get copyWith =>
      __$$_AgentAbilityCopyWithImpl<_$_AgentAbility>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgentAbilityToJson(
      this,
    );
  }
}

abstract class _AgentAbility extends AgentAbility {
  const factory _AgentAbility(
      {required final String displayName,
      required final String slot,
      required final String description,
      required final String? displayIcon}) = _$_AgentAbility;
  const _AgentAbility._() : super._();

  factory _AgentAbility.fromJson(Map<String, dynamic> json) =
      _$_AgentAbility.fromJson;

  @override
  String get displayName;
  @override
  String get slot;
  @override
  String get description;
  @override
  String? get displayIcon;
  @override
  @JsonKey(ignore: true)
  _$$_AgentAbilityCopyWith<_$_AgentAbility> get copyWith =>
      throw _privateConstructorUsedError;
}
