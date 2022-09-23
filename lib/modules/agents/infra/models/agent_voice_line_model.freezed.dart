// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agent_voice_line_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgentVoiceLineModel _$AgentVoiceLineModelFromJson(Map<String, dynamic> json) {
  return _AgentVoiceLineModel.fromJson(json);
}

/// @nodoc
mixin _$AgentVoiceLineModel {
  List<AgentVoiceMediaModel> get mediaList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentVoiceLineModelCopyWith<AgentVoiceLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentVoiceLineModelCopyWith<$Res> {
  factory $AgentVoiceLineModelCopyWith(
          AgentVoiceLineModel value, $Res Function(AgentVoiceLineModel) then) =
      _$AgentVoiceLineModelCopyWithImpl<$Res>;
  $Res call({List<AgentVoiceMediaModel> mediaList});
}

/// @nodoc
class _$AgentVoiceLineModelCopyWithImpl<$Res>
    implements $AgentVoiceLineModelCopyWith<$Res> {
  _$AgentVoiceLineModelCopyWithImpl(this._value, this._then);

  final AgentVoiceLineModel _value;
  // ignore: unused_field
  final $Res Function(AgentVoiceLineModel) _then;

  @override
  $Res call({
    Object? mediaList = freezed,
  }) {
    return _then(_value.copyWith(
      mediaList: mediaList == freezed
          ? _value.mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as List<AgentVoiceMediaModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_AgentVoiceLineModelCopyWith<$Res>
    implements $AgentVoiceLineModelCopyWith<$Res> {
  factory _$$_AgentVoiceLineModelCopyWith(_$_AgentVoiceLineModel value,
          $Res Function(_$_AgentVoiceLineModel) then) =
      __$$_AgentVoiceLineModelCopyWithImpl<$Res>;
  @override
  $Res call({List<AgentVoiceMediaModel> mediaList});
}

/// @nodoc
class __$$_AgentVoiceLineModelCopyWithImpl<$Res>
    extends _$AgentVoiceLineModelCopyWithImpl<$Res>
    implements _$$_AgentVoiceLineModelCopyWith<$Res> {
  __$$_AgentVoiceLineModelCopyWithImpl(_$_AgentVoiceLineModel _value,
      $Res Function(_$_AgentVoiceLineModel) _then)
      : super(_value, (v) => _then(v as _$_AgentVoiceLineModel));

  @override
  _$_AgentVoiceLineModel get _value => super._value as _$_AgentVoiceLineModel;

  @override
  $Res call({
    Object? mediaList = freezed,
  }) {
    return _then(_$_AgentVoiceLineModel(
      mediaList: mediaList == freezed
          ? _value._mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as List<AgentVoiceMediaModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgentVoiceLineModel implements _AgentVoiceLineModel {
  const _$_AgentVoiceLineModel(
      {required final List<AgentVoiceMediaModel> mediaList})
      : _mediaList = mediaList;

  factory _$_AgentVoiceLineModel.fromJson(Map<String, dynamic> json) =>
      _$$_AgentVoiceLineModelFromJson(json);

  final List<AgentVoiceMediaModel> _mediaList;
  @override
  List<AgentVoiceMediaModel> get mediaList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaList);
  }

  @override
  String toString() {
    return 'AgentVoiceLineModel(mediaList: $mediaList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgentVoiceLineModel &&
            const DeepCollectionEquality()
                .equals(other._mediaList, _mediaList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_mediaList));

  @JsonKey(ignore: true)
  @override
  _$$_AgentVoiceLineModelCopyWith<_$_AgentVoiceLineModel> get copyWith =>
      __$$_AgentVoiceLineModelCopyWithImpl<_$_AgentVoiceLineModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgentVoiceLineModelToJson(
      this,
    );
  }
}

abstract class _AgentVoiceLineModel implements AgentVoiceLineModel {
  const factory _AgentVoiceLineModel(
          {required final List<AgentVoiceMediaModel> mediaList}) =
      _$_AgentVoiceLineModel;

  factory _AgentVoiceLineModel.fromJson(Map<String, dynamic> json) =
      _$_AgentVoiceLineModel.fromJson;

  @override
  List<AgentVoiceMediaModel> get mediaList;
  @override
  @JsonKey(ignore: true)
  _$$_AgentVoiceLineModelCopyWith<_$_AgentVoiceLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}
