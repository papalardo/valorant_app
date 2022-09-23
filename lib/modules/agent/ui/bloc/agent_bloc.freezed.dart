// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agent_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AgentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agentId) fetchAgent,
    required TResult Function(AgentModel agent) loadAgent,
    required TResult Function(int ability) selectAbility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agentId)? fetchAgent,
    TResult Function(AgentModel agent)? loadAgent,
    TResult Function(int ability)? selectAbility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agentId)? fetchAgent,
    TResult Function(AgentModel agent)? loadAgent,
    TResult Function(int ability)? selectAbility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAgentEvent value) fetchAgent,
    required TResult Function(LoadAgentEvent value) loadAgent,
    required TResult Function(SelectAgentAbility value) selectAbility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchAgentEvent value)? fetchAgent,
    TResult Function(LoadAgentEvent value)? loadAgent,
    TResult Function(SelectAgentAbility value)? selectAbility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAgentEvent value)? fetchAgent,
    TResult Function(LoadAgentEvent value)? loadAgent,
    TResult Function(SelectAgentAbility value)? selectAbility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentEventCopyWith<$Res> {
  factory $AgentEventCopyWith(
          AgentEvent value, $Res Function(AgentEvent) then) =
      _$AgentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgentEventCopyWithImpl<$Res> implements $AgentEventCopyWith<$Res> {
  _$AgentEventCopyWithImpl(this._value, this._then);

  final AgentEvent _value;
  // ignore: unused_field
  final $Res Function(AgentEvent) _then;
}

/// @nodoc
abstract class _$$FetchAgentEventCopyWith<$Res> {
  factory _$$FetchAgentEventCopyWith(
          _$FetchAgentEvent value, $Res Function(_$FetchAgentEvent) then) =
      __$$FetchAgentEventCopyWithImpl<$Res>;
  $Res call({String agentId});
}

/// @nodoc
class __$$FetchAgentEventCopyWithImpl<$Res>
    extends _$AgentEventCopyWithImpl<$Res>
    implements _$$FetchAgentEventCopyWith<$Res> {
  __$$FetchAgentEventCopyWithImpl(
      _$FetchAgentEvent _value, $Res Function(_$FetchAgentEvent) _then)
      : super(_value, (v) => _then(v as _$FetchAgentEvent));

  @override
  _$FetchAgentEvent get _value => super._value as _$FetchAgentEvent;

  @override
  $Res call({
    Object? agentId = freezed,
  }) {
    return _then(_$FetchAgentEvent(
      agentId == freezed
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAgentEvent implements FetchAgentEvent {
  const _$FetchAgentEvent(this.agentId);

  @override
  final String agentId;

  @override
  String toString() {
    return 'AgentEvent.fetchAgent(agentId: $agentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAgentEvent &&
            const DeepCollectionEquality().equals(other.agentId, agentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(agentId));

  @JsonKey(ignore: true)
  @override
  _$$FetchAgentEventCopyWith<_$FetchAgentEvent> get copyWith =>
      __$$FetchAgentEventCopyWithImpl<_$FetchAgentEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agentId) fetchAgent,
    required TResult Function(AgentModel agent) loadAgent,
    required TResult Function(int ability) selectAbility,
  }) {
    return fetchAgent(agentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agentId)? fetchAgent,
    TResult Function(AgentModel agent)? loadAgent,
    TResult Function(int ability)? selectAbility,
  }) {
    return fetchAgent?.call(agentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agentId)? fetchAgent,
    TResult Function(AgentModel agent)? loadAgent,
    TResult Function(int ability)? selectAbility,
    required TResult orElse(),
  }) {
    if (fetchAgent != null) {
      return fetchAgent(agentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAgentEvent value) fetchAgent,
    required TResult Function(LoadAgentEvent value) loadAgent,
    required TResult Function(SelectAgentAbility value) selectAbility,
  }) {
    return fetchAgent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchAgentEvent value)? fetchAgent,
    TResult Function(LoadAgentEvent value)? loadAgent,
    TResult Function(SelectAgentAbility value)? selectAbility,
  }) {
    return fetchAgent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAgentEvent value)? fetchAgent,
    TResult Function(LoadAgentEvent value)? loadAgent,
    TResult Function(SelectAgentAbility value)? selectAbility,
    required TResult orElse(),
  }) {
    if (fetchAgent != null) {
      return fetchAgent(this);
    }
    return orElse();
  }
}

abstract class FetchAgentEvent implements AgentEvent {
  const factory FetchAgentEvent(final String agentId) = _$FetchAgentEvent;

  String get agentId;
  @JsonKey(ignore: true)
  _$$FetchAgentEventCopyWith<_$FetchAgentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAgentEventCopyWith<$Res> {
  factory _$$LoadAgentEventCopyWith(
          _$LoadAgentEvent value, $Res Function(_$LoadAgentEvent) then) =
      __$$LoadAgentEventCopyWithImpl<$Res>;
  $Res call({AgentModel agent});

  $AgentModelCopyWith<$Res> get agent;
}

/// @nodoc
class __$$LoadAgentEventCopyWithImpl<$Res>
    extends _$AgentEventCopyWithImpl<$Res>
    implements _$$LoadAgentEventCopyWith<$Res> {
  __$$LoadAgentEventCopyWithImpl(
      _$LoadAgentEvent _value, $Res Function(_$LoadAgentEvent) _then)
      : super(_value, (v) => _then(v as _$LoadAgentEvent));

  @override
  _$LoadAgentEvent get _value => super._value as _$LoadAgentEvent;

  @override
  $Res call({
    Object? agent = freezed,
  }) {
    return _then(_$LoadAgentEvent(
      agent == freezed
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as AgentModel,
    ));
  }

  @override
  $AgentModelCopyWith<$Res> get agent {
    return $AgentModelCopyWith<$Res>(_value.agent, (value) {
      return _then(_value.copyWith(agent: value));
    });
  }
}

/// @nodoc

class _$LoadAgentEvent implements LoadAgentEvent {
  const _$LoadAgentEvent(this.agent);

  @override
  final AgentModel agent;

  @override
  String toString() {
    return 'AgentEvent.loadAgent(agent: $agent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAgentEvent &&
            const DeepCollectionEquality().equals(other.agent, agent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(agent));

  @JsonKey(ignore: true)
  @override
  _$$LoadAgentEventCopyWith<_$LoadAgentEvent> get copyWith =>
      __$$LoadAgentEventCopyWithImpl<_$LoadAgentEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agentId) fetchAgent,
    required TResult Function(AgentModel agent) loadAgent,
    required TResult Function(int ability) selectAbility,
  }) {
    return loadAgent(agent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agentId)? fetchAgent,
    TResult Function(AgentModel agent)? loadAgent,
    TResult Function(int ability)? selectAbility,
  }) {
    return loadAgent?.call(agent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agentId)? fetchAgent,
    TResult Function(AgentModel agent)? loadAgent,
    TResult Function(int ability)? selectAbility,
    required TResult orElse(),
  }) {
    if (loadAgent != null) {
      return loadAgent(agent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAgentEvent value) fetchAgent,
    required TResult Function(LoadAgentEvent value) loadAgent,
    required TResult Function(SelectAgentAbility value) selectAbility,
  }) {
    return loadAgent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchAgentEvent value)? fetchAgent,
    TResult Function(LoadAgentEvent value)? loadAgent,
    TResult Function(SelectAgentAbility value)? selectAbility,
  }) {
    return loadAgent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAgentEvent value)? fetchAgent,
    TResult Function(LoadAgentEvent value)? loadAgent,
    TResult Function(SelectAgentAbility value)? selectAbility,
    required TResult orElse(),
  }) {
    if (loadAgent != null) {
      return loadAgent(this);
    }
    return orElse();
  }
}

abstract class LoadAgentEvent implements AgentEvent {
  const factory LoadAgentEvent(final AgentModel agent) = _$LoadAgentEvent;

  AgentModel get agent;
  @JsonKey(ignore: true)
  _$$LoadAgentEventCopyWith<_$LoadAgentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAgentAbilityCopyWith<$Res> {
  factory _$$SelectAgentAbilityCopyWith(_$SelectAgentAbility value,
          $Res Function(_$SelectAgentAbility) then) =
      __$$SelectAgentAbilityCopyWithImpl<$Res>;
  $Res call({int ability});
}

/// @nodoc
class __$$SelectAgentAbilityCopyWithImpl<$Res>
    extends _$AgentEventCopyWithImpl<$Res>
    implements _$$SelectAgentAbilityCopyWith<$Res> {
  __$$SelectAgentAbilityCopyWithImpl(
      _$SelectAgentAbility _value, $Res Function(_$SelectAgentAbility) _then)
      : super(_value, (v) => _then(v as _$SelectAgentAbility));

  @override
  _$SelectAgentAbility get _value => super._value as _$SelectAgentAbility;

  @override
  $Res call({
    Object? ability = freezed,
  }) {
    return _then(_$SelectAgentAbility(
      ability: ability == freezed
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectAgentAbility implements SelectAgentAbility {
  const _$SelectAgentAbility({required this.ability});

  @override
  final int ability;

  @override
  String toString() {
    return 'AgentEvent.selectAbility(ability: $ability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAgentAbility &&
            const DeepCollectionEquality().equals(other.ability, ability));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ability));

  @JsonKey(ignore: true)
  @override
  _$$SelectAgentAbilityCopyWith<_$SelectAgentAbility> get copyWith =>
      __$$SelectAgentAbilityCopyWithImpl<_$SelectAgentAbility>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agentId) fetchAgent,
    required TResult Function(AgentModel agent) loadAgent,
    required TResult Function(int ability) selectAbility,
  }) {
    return selectAbility(ability);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agentId)? fetchAgent,
    TResult Function(AgentModel agent)? loadAgent,
    TResult Function(int ability)? selectAbility,
  }) {
    return selectAbility?.call(ability);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agentId)? fetchAgent,
    TResult Function(AgentModel agent)? loadAgent,
    TResult Function(int ability)? selectAbility,
    required TResult orElse(),
  }) {
    if (selectAbility != null) {
      return selectAbility(ability);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAgentEvent value) fetchAgent,
    required TResult Function(LoadAgentEvent value) loadAgent,
    required TResult Function(SelectAgentAbility value) selectAbility,
  }) {
    return selectAbility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchAgentEvent value)? fetchAgent,
    TResult Function(LoadAgentEvent value)? loadAgent,
    TResult Function(SelectAgentAbility value)? selectAbility,
  }) {
    return selectAbility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAgentEvent value)? fetchAgent,
    TResult Function(LoadAgentEvent value)? loadAgent,
    TResult Function(SelectAgentAbility value)? selectAbility,
    required TResult orElse(),
  }) {
    if (selectAbility != null) {
      return selectAbility(this);
    }
    return orElse();
  }
}

abstract class SelectAgentAbility implements AgentEvent {
  const factory SelectAgentAbility({required final int ability}) =
      _$SelectAgentAbility;

  int get ability;
  @JsonKey(ignore: true)
  _$$SelectAgentAbilityCopyWith<_$SelectAgentAbility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AgentState {
  int get selectedAbility => throw _privateConstructorUsedError;
  ResultState<AgentModel> get agent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgentStateCopyWith<AgentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentStateCopyWith<$Res> {
  factory $AgentStateCopyWith(
          AgentState value, $Res Function(AgentState) then) =
      _$AgentStateCopyWithImpl<$Res>;
  $Res call({int selectedAbility, ResultState<AgentModel> agent});

  $ResultStateCopyWith<AgentModel, $Res> get agent;
}

/// @nodoc
class _$AgentStateCopyWithImpl<$Res> implements $AgentStateCopyWith<$Res> {
  _$AgentStateCopyWithImpl(this._value, this._then);

  final AgentState _value;
  // ignore: unused_field
  final $Res Function(AgentState) _then;

  @override
  $Res call({
    Object? selectedAbility = freezed,
    Object? agent = freezed,
  }) {
    return _then(_value.copyWith(
      selectedAbility: selectedAbility == freezed
          ? _value.selectedAbility
          : selectedAbility // ignore: cast_nullable_to_non_nullable
              as int,
      agent: agent == freezed
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as ResultState<AgentModel>,
    ));
  }

  @override
  $ResultStateCopyWith<AgentModel, $Res> get agent {
    return $ResultStateCopyWith<AgentModel, $Res>(_value.agent, (value) {
      return _then(_value.copyWith(agent: value));
    });
  }
}

/// @nodoc
abstract class _$$_AgentStateCopyWith<$Res>
    implements $AgentStateCopyWith<$Res> {
  factory _$$_AgentStateCopyWith(
          _$_AgentState value, $Res Function(_$_AgentState) then) =
      __$$_AgentStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedAbility, ResultState<AgentModel> agent});

  @override
  $ResultStateCopyWith<AgentModel, $Res> get agent;
}

/// @nodoc
class __$$_AgentStateCopyWithImpl<$Res> extends _$AgentStateCopyWithImpl<$Res>
    implements _$$_AgentStateCopyWith<$Res> {
  __$$_AgentStateCopyWithImpl(
      _$_AgentState _value, $Res Function(_$_AgentState) _then)
      : super(_value, (v) => _then(v as _$_AgentState));

  @override
  _$_AgentState get _value => super._value as _$_AgentState;

  @override
  $Res call({
    Object? selectedAbility = freezed,
    Object? agent = freezed,
  }) {
    return _then(_$_AgentState(
      selectedAbility: selectedAbility == freezed
          ? _value.selectedAbility
          : selectedAbility // ignore: cast_nullable_to_non_nullable
              as int,
      agent: agent == freezed
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as ResultState<AgentModel>,
    ));
  }
}

/// @nodoc

class _$_AgentState implements _AgentState {
  const _$_AgentState({required this.selectedAbility, required this.agent});

  @override
  final int selectedAbility;
  @override
  final ResultState<AgentModel> agent;

  @override
  String toString() {
    return 'AgentState(selectedAbility: $selectedAbility, agent: $agent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgentState &&
            const DeepCollectionEquality()
                .equals(other.selectedAbility, selectedAbility) &&
            const DeepCollectionEquality().equals(other.agent, agent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedAbility),
      const DeepCollectionEquality().hash(agent));

  @JsonKey(ignore: true)
  @override
  _$$_AgentStateCopyWith<_$_AgentState> get copyWith =>
      __$$_AgentStateCopyWithImpl<_$_AgentState>(this, _$identity);
}

abstract class _AgentState implements AgentState {
  const factory _AgentState(
      {required final int selectedAbility,
      required final ResultState<AgentModel> agent}) = _$_AgentState;

  @override
  int get selectedAbility;
  @override
  ResultState<AgentModel> get agent;
  @override
  @JsonKey(ignore: true)
  _$$_AgentStateCopyWith<_$_AgentState> get copyWith =>
      throw _privateConstructorUsedError;
}
