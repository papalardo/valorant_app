// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgentModel _$AgentModelFromJson(Map<String, dynamic> json) {
  return _AgentModel.fromJson(json);
}

/// @nodoc
mixin _$AgentModel {
  String get uuid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get displayIcon => throw _privateConstructorUsedError;
  String get developerName => throw _privateConstructorUsedError;
  String get fullPortrait => throw _privateConstructorUsedError;
  @JsonKey(name: 'background')
  String get backgroundImage => throw _privateConstructorUsedError;
  List<AgentAbility> get abilities => throw _privateConstructorUsedError;
  AgentVoiceLineModel get voiceLine => throw _privateConstructorUsedError;
  AgentRole get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentModelCopyWith<AgentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentModelCopyWith<$Res> {
  factory $AgentModelCopyWith(
          AgentModel value, $Res Function(AgentModel) then) =
      _$AgentModelCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String displayName,
      String description,
      String displayIcon,
      String developerName,
      String fullPortrait,
      @JsonKey(name: 'background') String backgroundImage,
      List<AgentAbility> abilities,
      AgentVoiceLineModel voiceLine,
      AgentRole role});

  $AgentVoiceLineModelCopyWith<$Res> get voiceLine;
  $AgentRoleCopyWith<$Res> get role;
}

/// @nodoc
class _$AgentModelCopyWithImpl<$Res> implements $AgentModelCopyWith<$Res> {
  _$AgentModelCopyWithImpl(this._value, this._then);

  final AgentModel _value;
  // ignore: unused_field
  final $Res Function(AgentModel) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
    Object? developerName = freezed,
    Object? fullPortrait = freezed,
    Object? backgroundImage = freezed,
    Object? abilities = freezed,
    Object? voiceLine = freezed,
    Object? role = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      displayIcon: displayIcon == freezed
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String,
      developerName: developerName == freezed
          ? _value.developerName
          : developerName // ignore: cast_nullable_to_non_nullable
              as String,
      fullPortrait: fullPortrait == freezed
          ? _value.fullPortrait
          : fullPortrait // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: backgroundImage == freezed
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AgentAbility>,
      voiceLine: voiceLine == freezed
          ? _value.voiceLine
          : voiceLine // ignore: cast_nullable_to_non_nullable
              as AgentVoiceLineModel,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as AgentRole,
    ));
  }

  @override
  $AgentVoiceLineModelCopyWith<$Res> get voiceLine {
    return $AgentVoiceLineModelCopyWith<$Res>(_value.voiceLine, (value) {
      return _then(_value.copyWith(voiceLine: value));
    });
  }

  @override
  $AgentRoleCopyWith<$Res> get role {
    return $AgentRoleCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value));
    });
  }
}

/// @nodoc
abstract class _$$_AgentModelCopyWith<$Res>
    implements $AgentModelCopyWith<$Res> {
  factory _$$_AgentModelCopyWith(
          _$_AgentModel value, $Res Function(_$_AgentModel) then) =
      __$$_AgentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String displayName,
      String description,
      String displayIcon,
      String developerName,
      String fullPortrait,
      @JsonKey(name: 'background') String backgroundImage,
      List<AgentAbility> abilities,
      AgentVoiceLineModel voiceLine,
      AgentRole role});

  @override
  $AgentVoiceLineModelCopyWith<$Res> get voiceLine;
  @override
  $AgentRoleCopyWith<$Res> get role;
}

/// @nodoc
class __$$_AgentModelCopyWithImpl<$Res> extends _$AgentModelCopyWithImpl<$Res>
    implements _$$_AgentModelCopyWith<$Res> {
  __$$_AgentModelCopyWithImpl(
      _$_AgentModel _value, $Res Function(_$_AgentModel) _then)
      : super(_value, (v) => _then(v as _$_AgentModel));

  @override
  _$_AgentModel get _value => super._value as _$_AgentModel;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
    Object? developerName = freezed,
    Object? fullPortrait = freezed,
    Object? backgroundImage = freezed,
    Object? abilities = freezed,
    Object? voiceLine = freezed,
    Object? role = freezed,
  }) {
    return _then(_$_AgentModel(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
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
      developerName: developerName == freezed
          ? _value.developerName
          : developerName // ignore: cast_nullable_to_non_nullable
              as String,
      fullPortrait: fullPortrait == freezed
          ? _value.fullPortrait
          : fullPortrait // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: backgroundImage == freezed
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: abilities == freezed
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AgentAbility>,
      voiceLine: voiceLine == freezed
          ? _value.voiceLine
          : voiceLine // ignore: cast_nullable_to_non_nullable
              as AgentVoiceLineModel,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as AgentRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgentModel extends _AgentModel {
  const _$_AgentModel(
      {required this.uuid,
      required this.displayName,
      required this.description,
      required this.displayIcon,
      required this.developerName,
      required this.fullPortrait,
      @JsonKey(name: 'background') required this.backgroundImage,
      required final List<AgentAbility> abilities,
      required this.voiceLine,
      required this.role})
      : _abilities = abilities,
        super._();

  factory _$_AgentModel.fromJson(Map<String, dynamic> json) =>
      _$$_AgentModelFromJson(json);

  @override
  final String uuid;
  @override
  final String displayName;
  @override
  final String description;
  @override
  final String displayIcon;
  @override
  final String developerName;
  @override
  final String fullPortrait;
  @override
  @JsonKey(name: 'background')
  final String backgroundImage;
  final List<AgentAbility> _abilities;
  @override
  List<AgentAbility> get abilities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  final AgentVoiceLineModel voiceLine;
  @override
  final AgentRole role;

  @override
  String toString() {
    return 'AgentModel(uuid: $uuid, displayName: $displayName, description: $description, displayIcon: $displayIcon, developerName: $developerName, fullPortrait: $fullPortrait, backgroundImage: $backgroundImage, abilities: $abilities, voiceLine: $voiceLine, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgentModel &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.displayIcon, displayIcon) &&
            const DeepCollectionEquality()
                .equals(other.developerName, developerName) &&
            const DeepCollectionEquality()
                .equals(other.fullPortrait, fullPortrait) &&
            const DeepCollectionEquality()
                .equals(other.backgroundImage, backgroundImage) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other.voiceLine, voiceLine) &&
            const DeepCollectionEquality().equals(other.role, role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(displayIcon),
      const DeepCollectionEquality().hash(developerName),
      const DeepCollectionEquality().hash(fullPortrait),
      const DeepCollectionEquality().hash(backgroundImage),
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(voiceLine),
      const DeepCollectionEquality().hash(role));

  @JsonKey(ignore: true)
  @override
  _$$_AgentModelCopyWith<_$_AgentModel> get copyWith =>
      __$$_AgentModelCopyWithImpl<_$_AgentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgentModelToJson(
      this,
    );
  }
}

abstract class _AgentModel extends AgentModel {
  const factory _AgentModel(
      {required final String uuid,
      required final String displayName,
      required final String description,
      required final String displayIcon,
      required final String developerName,
      required final String fullPortrait,
      @JsonKey(name: 'background') required final String backgroundImage,
      required final List<AgentAbility> abilities,
      required final AgentVoiceLineModel voiceLine,
      required final AgentRole role}) = _$_AgentModel;
  const _AgentModel._() : super._();

  factory _AgentModel.fromJson(Map<String, dynamic> json) =
      _$_AgentModel.fromJson;

  @override
  String get uuid;
  @override
  String get displayName;
  @override
  String get description;
  @override
  String get displayIcon;
  @override
  String get developerName;
  @override
  String get fullPortrait;
  @override
  @JsonKey(name: 'background')
  String get backgroundImage;
  @override
  List<AgentAbility> get abilities;
  @override
  AgentVoiceLineModel get voiceLine;
  @override
  AgentRole get role;
  @override
  @JsonKey(ignore: true)
  _$$_AgentModelCopyWith<_$_AgentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
