// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'maps_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String attr) $default, {
    required TResult Function() loadMaps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String attr)? $default, {
    TResult Function()? loadMaps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String attr)? $default, {
    TResult Function()? loadMaps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MapsEvent value) $default, {
    required TResult Function(LoadMapsEvent value) loadMaps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MapsEvent value)? $default, {
    TResult Function(LoadMapsEvent value)? loadMaps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MapsEvent value)? $default, {
    TResult Function(LoadMapsEvent value)? loadMaps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsEventCopyWith<$Res> {
  factory $MapsEventCopyWith(MapsEvent value, $Res Function(MapsEvent) then) =
      _$MapsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapsEventCopyWithImpl<$Res> implements $MapsEventCopyWith<$Res> {
  _$MapsEventCopyWithImpl(this._value, this._then);

  final MapsEvent _value;
  // ignore: unused_field
  final $Res Function(MapsEvent) _then;
}

/// @nodoc
abstract class _$$_MapsEventCopyWith<$Res> {
  factory _$$_MapsEventCopyWith(
          _$_MapsEvent value, $Res Function(_$_MapsEvent) then) =
      __$$_MapsEventCopyWithImpl<$Res>;
  $Res call({String attr});
}

/// @nodoc
class __$$_MapsEventCopyWithImpl<$Res> extends _$MapsEventCopyWithImpl<$Res>
    implements _$$_MapsEventCopyWith<$Res> {
  __$$_MapsEventCopyWithImpl(
      _$_MapsEvent _value, $Res Function(_$_MapsEvent) _then)
      : super(_value, (v) => _then(v as _$_MapsEvent));

  @override
  _$_MapsEvent get _value => super._value as _$_MapsEvent;

  @override
  $Res call({
    Object? attr = freezed,
  }) {
    return _then(_$_MapsEvent(
      attr: attr == freezed
          ? _value.attr
          : attr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MapsEvent implements _MapsEvent {
  const _$_MapsEvent({required this.attr});

  @override
  final String attr;

  @override
  String toString() {
    return 'MapsEvent(attr: $attr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapsEvent &&
            const DeepCollectionEquality().equals(other.attr, attr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(attr));

  @JsonKey(ignore: true)
  @override
  _$$_MapsEventCopyWith<_$_MapsEvent> get copyWith =>
      __$$_MapsEventCopyWithImpl<_$_MapsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String attr) $default, {
    required TResult Function() loadMaps,
  }) {
    return $default(attr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String attr)? $default, {
    TResult Function()? loadMaps,
  }) {
    return $default?.call(attr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String attr)? $default, {
    TResult Function()? loadMaps,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(attr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MapsEvent value) $default, {
    required TResult Function(LoadMapsEvent value) loadMaps,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MapsEvent value)? $default, {
    TResult Function(LoadMapsEvent value)? loadMaps,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MapsEvent value)? $default, {
    TResult Function(LoadMapsEvent value)? loadMaps,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _MapsEvent implements MapsEvent {
  const factory _MapsEvent({required final String attr}) = _$_MapsEvent;

  String get attr;
  @JsonKey(ignore: true)
  _$$_MapsEventCopyWith<_$_MapsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMapsEventCopyWith<$Res> {
  factory _$$LoadMapsEventCopyWith(
          _$LoadMapsEvent value, $Res Function(_$LoadMapsEvent) then) =
      __$$LoadMapsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMapsEventCopyWithImpl<$Res> extends _$MapsEventCopyWithImpl<$Res>
    implements _$$LoadMapsEventCopyWith<$Res> {
  __$$LoadMapsEventCopyWithImpl(
      _$LoadMapsEvent _value, $Res Function(_$LoadMapsEvent) _then)
      : super(_value, (v) => _then(v as _$LoadMapsEvent));

  @override
  _$LoadMapsEvent get _value => super._value as _$LoadMapsEvent;
}

/// @nodoc

class _$LoadMapsEvent implements LoadMapsEvent {
  _$LoadMapsEvent();

  @override
  String toString() {
    return 'MapsEvent.loadMaps()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMapsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String attr) $default, {
    required TResult Function() loadMaps,
  }) {
    return loadMaps();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String attr)? $default, {
    TResult Function()? loadMaps,
  }) {
    return loadMaps?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String attr)? $default, {
    TResult Function()? loadMaps,
    required TResult orElse(),
  }) {
    if (loadMaps != null) {
      return loadMaps();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MapsEvent value) $default, {
    required TResult Function(LoadMapsEvent value) loadMaps,
  }) {
    return loadMaps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MapsEvent value)? $default, {
    TResult Function(LoadMapsEvent value)? loadMaps,
  }) {
    return loadMaps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MapsEvent value)? $default, {
    TResult Function(LoadMapsEvent value)? loadMaps,
    required TResult orElse(),
  }) {
    if (loadMaps != null) {
      return loadMaps(this);
    }
    return orElse();
  }
}

abstract class LoadMapsEvent implements MapsEvent {
  factory LoadMapsEvent() = _$LoadMapsEvent;
}

/// @nodoc
mixin _$MapsState {
  ResultState<List<MapModel>> get maps => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapsStateCopyWith<MapsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsStateCopyWith<$Res> {
  factory $MapsStateCopyWith(MapsState value, $Res Function(MapsState) then) =
      _$MapsStateCopyWithImpl<$Res>;
  $Res call({ResultState<List<MapModel>> maps});

  $ResultStateCopyWith<List<MapModel>, $Res> get maps;
}

/// @nodoc
class _$MapsStateCopyWithImpl<$Res> implements $MapsStateCopyWith<$Res> {
  _$MapsStateCopyWithImpl(this._value, this._then);

  final MapsState _value;
  // ignore: unused_field
  final $Res Function(MapsState) _then;

  @override
  $Res call({
    Object? maps = freezed,
  }) {
    return _then(_value.copyWith(
      maps: maps == freezed
          ? _value.maps
          : maps // ignore: cast_nullable_to_non_nullable
              as ResultState<List<MapModel>>,
    ));
  }

  @override
  $ResultStateCopyWith<List<MapModel>, $Res> get maps {
    return $ResultStateCopyWith<List<MapModel>, $Res>(_value.maps, (value) {
      return _then(_value.copyWith(maps: value));
    });
  }
}

/// @nodoc
abstract class _$$_MapsStateCopyWith<$Res> implements $MapsStateCopyWith<$Res> {
  factory _$$_MapsStateCopyWith(
          _$_MapsState value, $Res Function(_$_MapsState) then) =
      __$$_MapsStateCopyWithImpl<$Res>;
  @override
  $Res call({ResultState<List<MapModel>> maps});

  @override
  $ResultStateCopyWith<List<MapModel>, $Res> get maps;
}

/// @nodoc
class __$$_MapsStateCopyWithImpl<$Res> extends _$MapsStateCopyWithImpl<$Res>
    implements _$$_MapsStateCopyWith<$Res> {
  __$$_MapsStateCopyWithImpl(
      _$_MapsState _value, $Res Function(_$_MapsState) _then)
      : super(_value, (v) => _then(v as _$_MapsState));

  @override
  _$_MapsState get _value => super._value as _$_MapsState;

  @override
  $Res call({
    Object? maps = freezed,
  }) {
    return _then(_$_MapsState(
      maps: maps == freezed
          ? _value.maps
          : maps // ignore: cast_nullable_to_non_nullable
              as ResultState<List<MapModel>>,
    ));
  }
}

/// @nodoc

class _$_MapsState implements _MapsState {
  const _$_MapsState({required this.maps});

  @override
  final ResultState<List<MapModel>> maps;

  @override
  String toString() {
    return 'MapsState(maps: $maps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapsState &&
            const DeepCollectionEquality().equals(other.maps, maps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(maps));

  @JsonKey(ignore: true)
  @override
  _$$_MapsStateCopyWith<_$_MapsState> get copyWith =>
      __$$_MapsStateCopyWithImpl<_$_MapsState>(this, _$identity);
}

abstract class _MapsState implements MapsState {
  const factory _MapsState({required final ResultState<List<MapModel>> maps}) =
      _$_MapsState;

  @override
  ResultState<List<MapModel>> get maps;
  @override
  @JsonKey(ignore: true)
  _$$_MapsStateCopyWith<_$_MapsState> get copyWith =>
      throw _privateConstructorUsedError;
}
