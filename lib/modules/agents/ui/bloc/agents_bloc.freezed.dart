// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agents_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AgentsState {
  ResultState<List<AgentModel>> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgentsStateCopyWith<AgentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentsStateCopyWith<$Res> {
  factory $AgentsStateCopyWith(
          AgentsState value, $Res Function(AgentsState) then) =
      _$AgentsStateCopyWithImpl<$Res>;
  $Res call({ResultState<List<AgentModel>> data});

  $ResultStateCopyWith<List<AgentModel>, $Res> get data;
}

/// @nodoc
class _$AgentsStateCopyWithImpl<$Res> implements $AgentsStateCopyWith<$Res> {
  _$AgentsStateCopyWithImpl(this._value, this._then);

  final AgentsState _value;
  // ignore: unused_field
  final $Res Function(AgentsState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResultState<List<AgentModel>>,
    ));
  }

  @override
  $ResultStateCopyWith<List<AgentModel>, $Res> get data {
    return $ResultStateCopyWith<List<AgentModel>, $Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_AgentsStateCopyWith<$Res>
    implements $AgentsStateCopyWith<$Res> {
  factory _$$_AgentsStateCopyWith(
          _$_AgentsState value, $Res Function(_$_AgentsState) then) =
      __$$_AgentsStateCopyWithImpl<$Res>;
  @override
  $Res call({ResultState<List<AgentModel>> data});

  @override
  $ResultStateCopyWith<List<AgentModel>, $Res> get data;
}

/// @nodoc
class __$$_AgentsStateCopyWithImpl<$Res> extends _$AgentsStateCopyWithImpl<$Res>
    implements _$$_AgentsStateCopyWith<$Res> {
  __$$_AgentsStateCopyWithImpl(
      _$_AgentsState _value, $Res Function(_$_AgentsState) _then)
      : super(_value, (v) => _then(v as _$_AgentsState));

  @override
  _$_AgentsState get _value => super._value as _$_AgentsState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_AgentsState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResultState<List<AgentModel>>,
    ));
  }
}

/// @nodoc

class _$_AgentsState implements _AgentsState {
  const _$_AgentsState({required this.data});

  @override
  final ResultState<List<AgentModel>> data;

  @override
  String toString() {
    return 'AgentsState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgentsState &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_AgentsStateCopyWith<_$_AgentsState> get copyWith =>
      __$$_AgentsStateCopyWithImpl<_$_AgentsState>(this, _$identity);
}

abstract class _AgentsState implements AgentsState {
  const factory _AgentsState(
      {required final ResultState<List<AgentModel>> data}) = _$_AgentsState;

  @override
  ResultState<List<AgentModel>> get data;
  @override
  @JsonKey(ignore: true)
  _$$_AgentsStateCopyWith<_$_AgentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AgentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAgents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadAgents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAgents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAgents value) loadAgents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAgents value)? loadAgents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAgents value)? loadAgents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentsEventCopyWith<$Res> {
  factory $AgentsEventCopyWith(
          AgentsEvent value, $Res Function(AgentsEvent) then) =
      _$AgentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgentsEventCopyWithImpl<$Res> implements $AgentsEventCopyWith<$Res> {
  _$AgentsEventCopyWithImpl(this._value, this._then);

  final AgentsEvent _value;
  // ignore: unused_field
  final $Res Function(AgentsEvent) _then;
}

/// @nodoc
abstract class _$$LoadAgentsCopyWith<$Res> {
  factory _$$LoadAgentsCopyWith(
          _$LoadAgents value, $Res Function(_$LoadAgents) then) =
      __$$LoadAgentsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAgentsCopyWithImpl<$Res> extends _$AgentsEventCopyWithImpl<$Res>
    implements _$$LoadAgentsCopyWith<$Res> {
  __$$LoadAgentsCopyWithImpl(
      _$LoadAgents _value, $Res Function(_$LoadAgents) _then)
      : super(_value, (v) => _then(v as _$LoadAgents));

  @override
  _$LoadAgents get _value => super._value as _$LoadAgents;
}

/// @nodoc

class _$LoadAgents implements LoadAgents {
  const _$LoadAgents();

  @override
  String toString() {
    return 'AgentsEvent.loadAgents()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAgents);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAgents,
  }) {
    return loadAgents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadAgents,
  }) {
    return loadAgents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAgents,
    required TResult orElse(),
  }) {
    if (loadAgents != null) {
      return loadAgents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAgents value) loadAgents,
  }) {
    return loadAgents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAgents value)? loadAgents,
  }) {
    return loadAgents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAgents value)? loadAgents,
    required TResult orElse(),
  }) {
    if (loadAgents != null) {
      return loadAgents(this);
    }
    return orElse();
  }
}

abstract class LoadAgents implements AgentsEvent {
  const factory LoadAgents() = _$LoadAgents;
}
