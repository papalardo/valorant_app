// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lineups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LineupsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLineups,
    required TResult Function(LineupsFilterState filters) updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchLineups,
    TResult Function(LineupsFilterState filters)? updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLineups,
    TResult Function(LineupsFilterState filters)? updateFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLineups value) fetchLineups,
    required TResult Function(UpdateFilter value) updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchLineups value)? fetchLineups,
    TResult Function(UpdateFilter value)? updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLineups value)? fetchLineups,
    TResult Function(UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineupsEventCopyWith<$Res> {
  factory $LineupsEventCopyWith(
          LineupsEvent value, $Res Function(LineupsEvent) then) =
      _$LineupsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LineupsEventCopyWithImpl<$Res> implements $LineupsEventCopyWith<$Res> {
  _$LineupsEventCopyWithImpl(this._value, this._then);

  final LineupsEvent _value;
  // ignore: unused_field
  final $Res Function(LineupsEvent) _then;
}

/// @nodoc
abstract class _$$FetchLineupsCopyWith<$Res> {
  factory _$$FetchLineupsCopyWith(
          _$FetchLineups value, $Res Function(_$FetchLineups) then) =
      __$$FetchLineupsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchLineupsCopyWithImpl<$Res>
    extends _$LineupsEventCopyWithImpl<$Res>
    implements _$$FetchLineupsCopyWith<$Res> {
  __$$FetchLineupsCopyWithImpl(
      _$FetchLineups _value, $Res Function(_$FetchLineups) _then)
      : super(_value, (v) => _then(v as _$FetchLineups));

  @override
  _$FetchLineups get _value => super._value as _$FetchLineups;
}

/// @nodoc

class _$FetchLineups implements FetchLineups {
  const _$FetchLineups();

  @override
  String toString() {
    return 'LineupsEvent.fetchLineups()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchLineups);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLineups,
    required TResult Function(LineupsFilterState filters) updateFilter,
  }) {
    return fetchLineups();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchLineups,
    TResult Function(LineupsFilterState filters)? updateFilter,
  }) {
    return fetchLineups?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLineups,
    TResult Function(LineupsFilterState filters)? updateFilter,
    required TResult orElse(),
  }) {
    if (fetchLineups != null) {
      return fetchLineups();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLineups value) fetchLineups,
    required TResult Function(UpdateFilter value) updateFilter,
  }) {
    return fetchLineups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchLineups value)? fetchLineups,
    TResult Function(UpdateFilter value)? updateFilter,
  }) {
    return fetchLineups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLineups value)? fetchLineups,
    TResult Function(UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (fetchLineups != null) {
      return fetchLineups(this);
    }
    return orElse();
  }
}

abstract class FetchLineups implements LineupsEvent {
  const factory FetchLineups() = _$FetchLineups;
}

/// @nodoc
abstract class _$$UpdateFilterCopyWith<$Res> {
  factory _$$UpdateFilterCopyWith(
          _$UpdateFilter value, $Res Function(_$UpdateFilter) then) =
      __$$UpdateFilterCopyWithImpl<$Res>;
  $Res call({LineupsFilterState filters});

  $LineupsFilterStateCopyWith<$Res> get filters;
}

/// @nodoc
class __$$UpdateFilterCopyWithImpl<$Res>
    extends _$LineupsEventCopyWithImpl<$Res>
    implements _$$UpdateFilterCopyWith<$Res> {
  __$$UpdateFilterCopyWithImpl(
      _$UpdateFilter _value, $Res Function(_$UpdateFilter) _then)
      : super(_value, (v) => _then(v as _$UpdateFilter));

  @override
  _$UpdateFilter get _value => super._value as _$UpdateFilter;

  @override
  $Res call({
    Object? filters = freezed,
  }) {
    return _then(_$UpdateFilter(
      filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as LineupsFilterState,
    ));
  }

  @override
  $LineupsFilterStateCopyWith<$Res> get filters {
    return $LineupsFilterStateCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc

class _$UpdateFilter implements UpdateFilter {
  const _$UpdateFilter(this.filters);

  @override
  final LineupsFilterState filters;

  @override
  String toString() {
    return 'LineupsEvent.updateFilter(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFilter &&
            const DeepCollectionEquality().equals(other.filters, filters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filters));

  @JsonKey(ignore: true)
  @override
  _$$UpdateFilterCopyWith<_$UpdateFilter> get copyWith =>
      __$$UpdateFilterCopyWithImpl<_$UpdateFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLineups,
    required TResult Function(LineupsFilterState filters) updateFilter,
  }) {
    return updateFilter(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchLineups,
    TResult Function(LineupsFilterState filters)? updateFilter,
  }) {
    return updateFilter?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLineups,
    TResult Function(LineupsFilterState filters)? updateFilter,
    required TResult orElse(),
  }) {
    if (updateFilter != null) {
      return updateFilter(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLineups value) fetchLineups,
    required TResult Function(UpdateFilter value) updateFilter,
  }) {
    return updateFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchLineups value)? fetchLineups,
    TResult Function(UpdateFilter value)? updateFilter,
  }) {
    return updateFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLineups value)? fetchLineups,
    TResult Function(UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (updateFilter != null) {
      return updateFilter(this);
    }
    return orElse();
  }
}

abstract class UpdateFilter implements LineupsEvent {
  const factory UpdateFilter(final LineupsFilterState filters) = _$UpdateFilter;

  LineupsFilterState get filters;
  @JsonKey(ignore: true)
  _$$UpdateFilterCopyWith<_$UpdateFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LineupsFilterState {
  String get map => throw _privateConstructorUsedError;
  String get side => throw _privateConstructorUsedError;
  String get agent => throw _privateConstructorUsedError;
  String get ability => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LineupsFilterStateCopyWith<LineupsFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineupsFilterStateCopyWith<$Res> {
  factory $LineupsFilterStateCopyWith(
          LineupsFilterState value, $Res Function(LineupsFilterState) then) =
      _$LineupsFilterStateCopyWithImpl<$Res>;
  $Res call({String map, String side, String agent, String ability});
}

/// @nodoc
class _$LineupsFilterStateCopyWithImpl<$Res>
    implements $LineupsFilterStateCopyWith<$Res> {
  _$LineupsFilterStateCopyWithImpl(this._value, this._then);

  final LineupsFilterState _value;
  // ignore: unused_field
  final $Res Function(LineupsFilterState) _then;

  @override
  $Res call({
    Object? map = freezed,
    Object? side = freezed,
    Object? agent = freezed,
    Object? ability = freezed,
  }) {
    return _then(_value.copyWith(
      map: map == freezed
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as String,
      side: side == freezed
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
      agent: agent == freezed
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as String,
      ability: ability == freezed
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LineupsFilterStateCopyWith<$Res>
    implements $LineupsFilterStateCopyWith<$Res> {
  factory _$$_LineupsFilterStateCopyWith(_$_LineupsFilterState value,
          $Res Function(_$_LineupsFilterState) then) =
      __$$_LineupsFilterStateCopyWithImpl<$Res>;
  @override
  $Res call({String map, String side, String agent, String ability});
}

/// @nodoc
class __$$_LineupsFilterStateCopyWithImpl<$Res>
    extends _$LineupsFilterStateCopyWithImpl<$Res>
    implements _$$_LineupsFilterStateCopyWith<$Res> {
  __$$_LineupsFilterStateCopyWithImpl(
      _$_LineupsFilterState _value, $Res Function(_$_LineupsFilterState) _then)
      : super(_value, (v) => _then(v as _$_LineupsFilterState));

  @override
  _$_LineupsFilterState get _value => super._value as _$_LineupsFilterState;

  @override
  $Res call({
    Object? map = freezed,
    Object? side = freezed,
    Object? agent = freezed,
    Object? ability = freezed,
  }) {
    return _then(_$_LineupsFilterState(
      map: map == freezed
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as String,
      side: side == freezed
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
      agent: agent == freezed
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as String,
      ability: ability == freezed
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LineupsFilterState implements _LineupsFilterState {
  const _$_LineupsFilterState(
      {required this.map,
      required this.side,
      required this.agent,
      required this.ability});

  @override
  final String map;
  @override
  final String side;
  @override
  final String agent;
  @override
  final String ability;

  @override
  String toString() {
    return 'LineupsFilterState(map: $map, side: $side, agent: $agent, ability: $ability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineupsFilterState &&
            const DeepCollectionEquality().equals(other.map, map) &&
            const DeepCollectionEquality().equals(other.side, side) &&
            const DeepCollectionEquality().equals(other.agent, agent) &&
            const DeepCollectionEquality().equals(other.ability, ability));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(map),
      const DeepCollectionEquality().hash(side),
      const DeepCollectionEquality().hash(agent),
      const DeepCollectionEquality().hash(ability));

  @JsonKey(ignore: true)
  @override
  _$$_LineupsFilterStateCopyWith<_$_LineupsFilterState> get copyWith =>
      __$$_LineupsFilterStateCopyWithImpl<_$_LineupsFilterState>(
          this, _$identity);
}

abstract class _LineupsFilterState implements LineupsFilterState {
  const factory _LineupsFilterState(
      {required final String map,
      required final String side,
      required final String agent,
      required final String ability}) = _$_LineupsFilterState;

  @override
  String get map;
  @override
  String get side;
  @override
  String get agent;
  @override
  String get ability;
  @override
  @JsonKey(ignore: true)
  _$$_LineupsFilterStateCopyWith<_$_LineupsFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LineupsState {
  LineupsFilterState get filters => throw _privateConstructorUsedError;
  ResultState<List<LineupModel>> get lineups =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LineupsStateCopyWith<LineupsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineupsStateCopyWith<$Res> {
  factory $LineupsStateCopyWith(
          LineupsState value, $Res Function(LineupsState) then) =
      _$LineupsStateCopyWithImpl<$Res>;
  $Res call(
      {LineupsFilterState filters, ResultState<List<LineupModel>> lineups});

  $LineupsFilterStateCopyWith<$Res> get filters;
  $ResultStateCopyWith<List<LineupModel>, $Res> get lineups;
}

/// @nodoc
class _$LineupsStateCopyWithImpl<$Res> implements $LineupsStateCopyWith<$Res> {
  _$LineupsStateCopyWithImpl(this._value, this._then);

  final LineupsState _value;
  // ignore: unused_field
  final $Res Function(LineupsState) _then;

  @override
  $Res call({
    Object? filters = freezed,
    Object? lineups = freezed,
  }) {
    return _then(_value.copyWith(
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as LineupsFilterState,
      lineups: lineups == freezed
          ? _value.lineups
          : lineups // ignore: cast_nullable_to_non_nullable
              as ResultState<List<LineupModel>>,
    ));
  }

  @override
  $LineupsFilterStateCopyWith<$Res> get filters {
    return $LineupsFilterStateCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }

  @override
  $ResultStateCopyWith<List<LineupModel>, $Res> get lineups {
    return $ResultStateCopyWith<List<LineupModel>, $Res>(_value.lineups,
        (value) {
      return _then(_value.copyWith(lineups: value));
    });
  }
}

/// @nodoc
abstract class _$$_LineupsStateCopyWith<$Res>
    implements $LineupsStateCopyWith<$Res> {
  factory _$$_LineupsStateCopyWith(
          _$_LineupsState value, $Res Function(_$_LineupsState) then) =
      __$$_LineupsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {LineupsFilterState filters, ResultState<List<LineupModel>> lineups});

  @override
  $LineupsFilterStateCopyWith<$Res> get filters;
  @override
  $ResultStateCopyWith<List<LineupModel>, $Res> get lineups;
}

/// @nodoc
class __$$_LineupsStateCopyWithImpl<$Res>
    extends _$LineupsStateCopyWithImpl<$Res>
    implements _$$_LineupsStateCopyWith<$Res> {
  __$$_LineupsStateCopyWithImpl(
      _$_LineupsState _value, $Res Function(_$_LineupsState) _then)
      : super(_value, (v) => _then(v as _$_LineupsState));

  @override
  _$_LineupsState get _value => super._value as _$_LineupsState;

  @override
  $Res call({
    Object? filters = freezed,
    Object? lineups = freezed,
  }) {
    return _then(_$_LineupsState(
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as LineupsFilterState,
      lineups: lineups == freezed
          ? _value.lineups
          : lineups // ignore: cast_nullable_to_non_nullable
              as ResultState<List<LineupModel>>,
    ));
  }
}

/// @nodoc

class _$_LineupsState implements _LineupsState {
  const _$_LineupsState({required this.filters, required this.lineups});

  @override
  final LineupsFilterState filters;
  @override
  final ResultState<List<LineupModel>> lineups;

  @override
  String toString() {
    return 'LineupsState(filters: $filters, lineups: $lineups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineupsState &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            const DeepCollectionEquality().equals(other.lineups, lineups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filters),
      const DeepCollectionEquality().hash(lineups));

  @JsonKey(ignore: true)
  @override
  _$$_LineupsStateCopyWith<_$_LineupsState> get copyWith =>
      __$$_LineupsStateCopyWithImpl<_$_LineupsState>(this, _$identity);
}

abstract class _LineupsState implements LineupsState {
  const factory _LineupsState(
      {required final LineupsFilterState filters,
      required final ResultState<List<LineupModel>> lineups}) = _$_LineupsState;

  @override
  LineupsFilterState get filters;
  @override
  ResultState<List<LineupModel>> get lineups;
  @override
  @JsonKey(ignore: true)
  _$$_LineupsStateCopyWith<_$_LineupsState> get copyWith =>
      throw _privateConstructorUsedError;
}
