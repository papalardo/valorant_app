// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agent_role_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgentRole _$AgentRoleFromJson(Map<String, dynamic> json) {
  return _AgentRole.fromJson(json);
}

/// @nodoc
mixin _$AgentRole {
  String get displayName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get displayIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentRoleCopyWith<AgentRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentRoleCopyWith<$Res> {
  factory $AgentRoleCopyWith(AgentRole value, $Res Function(AgentRole) then) =
      _$AgentRoleCopyWithImpl<$Res>;
  $Res call({String displayName, String description, String displayIcon});
}

/// @nodoc
class _$AgentRoleCopyWithImpl<$Res> implements $AgentRoleCopyWith<$Res> {
  _$AgentRoleCopyWithImpl(this._value, this._then);

  final AgentRole _value;
  // ignore: unused_field
  final $Res Function(AgentRole) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      displayIcon: displayIcon == freezed
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AgentRoleCopyWith<$Res> implements $AgentRoleCopyWith<$Res> {
  factory _$$_AgentRoleCopyWith(
          _$_AgentRole value, $Res Function(_$_AgentRole) then) =
      __$$_AgentRoleCopyWithImpl<$Res>;
  @override
  $Res call({String displayName, String description, String displayIcon});
}

/// @nodoc
class __$$_AgentRoleCopyWithImpl<$Res> extends _$AgentRoleCopyWithImpl<$Res>
    implements _$$_AgentRoleCopyWith<$Res> {
  __$$_AgentRoleCopyWithImpl(
      _$_AgentRole _value, $Res Function(_$_AgentRole) _then)
      : super(_value, (v) => _then(v as _$_AgentRole));

  @override
  _$_AgentRole get _value => super._value as _$_AgentRole;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
  }) {
    return _then(_$_AgentRole(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      displayIcon: displayIcon == freezed
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgentRole implements _AgentRole {
  const _$_AgentRole(
      {required this.displayName,
      required this.description,
      required this.displayIcon});

  factory _$_AgentRole.fromJson(Map<String, dynamic> json) =>
      _$$_AgentRoleFromJson(json);

  @override
  final String displayName;
  @override
  final String description;
  @override
  final String displayIcon;

  @override
  String toString() {
    return 'AgentRole(displayName: $displayName, description: $description, displayIcon: $displayIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgentRole &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
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
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(displayIcon));

  @JsonKey(ignore: true)
  @override
  _$$_AgentRoleCopyWith<_$_AgentRole> get copyWith =>
      __$$_AgentRoleCopyWithImpl<_$_AgentRole>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgentRoleToJson(
      this,
    );
  }
}

abstract class _AgentRole implements AgentRole {
  const factory _AgentRole(
      {required final String displayName,
      required final String description,
      required final String displayIcon}) = _$_AgentRole;

  factory _AgentRole.fromJson(Map<String, dynamic> json) =
      _$_AgentRole.fromJson;

  @override
  String get displayName;
  @override
  String get description;
  @override
  String get displayIcon;
  @override
  @JsonKey(ignore: true)
  _$$_AgentRoleCopyWith<_$_AgentRole> get copyWith =>
      throw _privateConstructorUsedError;
}
