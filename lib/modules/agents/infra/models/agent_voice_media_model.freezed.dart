// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agent_voice_media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgentVoiceMediaModel _$AgentVoiceMediaModelFromJson(Map<String, dynamic> json) {
  return _AgentVoiceMediaModel.fromJson(json);
}

/// @nodoc
mixin _$AgentVoiceMediaModel {
  String get wave => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentVoiceMediaModelCopyWith<AgentVoiceMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentVoiceMediaModelCopyWith<$Res> {
  factory $AgentVoiceMediaModelCopyWith(AgentVoiceMediaModel value,
          $Res Function(AgentVoiceMediaModel) then) =
      _$AgentVoiceMediaModelCopyWithImpl<$Res>;
  $Res call({String wave});
}

/// @nodoc
class _$AgentVoiceMediaModelCopyWithImpl<$Res>
    implements $AgentVoiceMediaModelCopyWith<$Res> {
  _$AgentVoiceMediaModelCopyWithImpl(this._value, this._then);

  final AgentVoiceMediaModel _value;
  // ignore: unused_field
  final $Res Function(AgentVoiceMediaModel) _then;

  @override
  $Res call({
    Object? wave = freezed,
  }) {
    return _then(_value.copyWith(
      wave: wave == freezed
          ? _value.wave
          : wave // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AgentVoiceMediaModelCopyWith<$Res>
    implements $AgentVoiceMediaModelCopyWith<$Res> {
  factory _$$_AgentVoiceMediaModelCopyWith(_$_AgentVoiceMediaModel value,
          $Res Function(_$_AgentVoiceMediaModel) then) =
      __$$_AgentVoiceMediaModelCopyWithImpl<$Res>;
  @override
  $Res call({String wave});
}

/// @nodoc
class __$$_AgentVoiceMediaModelCopyWithImpl<$Res>
    extends _$AgentVoiceMediaModelCopyWithImpl<$Res>
    implements _$$_AgentVoiceMediaModelCopyWith<$Res> {
  __$$_AgentVoiceMediaModelCopyWithImpl(_$_AgentVoiceMediaModel _value,
      $Res Function(_$_AgentVoiceMediaModel) _then)
      : super(_value, (v) => _then(v as _$_AgentVoiceMediaModel));

  @override
  _$_AgentVoiceMediaModel get _value => super._value as _$_AgentVoiceMediaModel;

  @override
  $Res call({
    Object? wave = freezed,
  }) {
    return _then(_$_AgentVoiceMediaModel(
      wave: wave == freezed
          ? _value.wave
          : wave // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgentVoiceMediaModel implements _AgentVoiceMediaModel {
  const _$_AgentVoiceMediaModel({required this.wave});

  factory _$_AgentVoiceMediaModel.fromJson(Map<String, dynamic> json) =>
      _$$_AgentVoiceMediaModelFromJson(json);

  @override
  final String wave;

  @override
  String toString() {
    return 'AgentVoiceMediaModel(wave: $wave)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgentVoiceMediaModel &&
            const DeepCollectionEquality().equals(other.wave, wave));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wave));

  @JsonKey(ignore: true)
  @override
  _$$_AgentVoiceMediaModelCopyWith<_$_AgentVoiceMediaModel> get copyWith =>
      __$$_AgentVoiceMediaModelCopyWithImpl<_$_AgentVoiceMediaModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgentVoiceMediaModelToJson(
      this,
    );
  }
}

abstract class _AgentVoiceMediaModel implements AgentVoiceMediaModel {
  const factory _AgentVoiceMediaModel({required final String wave}) =
      _$_AgentVoiceMediaModel;

  factory _AgentVoiceMediaModel.fromJson(Map<String, dynamic> json) =
      _$_AgentVoiceMediaModel.fromJson;

  @override
  String get wave;
  @override
  @JsonKey(ignore: true)
  _$$_AgentVoiceMediaModelCopyWith<_$_AgentVoiceMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
