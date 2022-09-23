// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'datasource_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DatasourceResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataSourceSuccessResponse<T> value) success,
    required TResult Function(DataSourceFailureResponse<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataSourceSuccessResponse<T> value)? success,
    TResult Function(DataSourceFailureResponse<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataSourceSuccessResponse<T> value)? success,
    TResult Function(DataSourceFailureResponse<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatasourceResponseCopyWith<T, $Res> {
  factory $DatasourceResponseCopyWith(DatasourceResponse<T> value,
          $Res Function(DatasourceResponse<T>) then) =
      _$DatasourceResponseCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DatasourceResponseCopyWithImpl<T, $Res>
    implements $DatasourceResponseCopyWith<T, $Res> {
  _$DatasourceResponseCopyWithImpl(this._value, this._then);

  final DatasourceResponse<T> _value;
  // ignore: unused_field
  final $Res Function(DatasourceResponse<T>) _then;
}

/// @nodoc
abstract class _$$DataSourceSuccessResponseCopyWith<T, $Res> {
  factory _$$DataSourceSuccessResponseCopyWith(
          _$DataSourceSuccessResponse<T> value,
          $Res Function(_$DataSourceSuccessResponse<T>) then) =
      __$$DataSourceSuccessResponseCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$DataSourceSuccessResponseCopyWithImpl<T, $Res>
    extends _$DatasourceResponseCopyWithImpl<T, $Res>
    implements _$$DataSourceSuccessResponseCopyWith<T, $Res> {
  __$$DataSourceSuccessResponseCopyWithImpl(
      _$DataSourceSuccessResponse<T> _value,
      $Res Function(_$DataSourceSuccessResponse<T>) _then)
      : super(_value, (v) => _then(v as _$DataSourceSuccessResponse<T>));

  @override
  _$DataSourceSuccessResponse<T> get _value =>
      super._value as _$DataSourceSuccessResponse<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataSourceSuccessResponse<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DataSourceSuccessResponse<T> implements DataSourceSuccessResponse<T> {
  const _$DataSourceSuccessResponse({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'DatasourceResponse<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSourceSuccessResponse<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$DataSourceSuccessResponseCopyWith<T, _$DataSourceSuccessResponse<T>>
      get copyWith => __$$DataSourceSuccessResponseCopyWithImpl<T,
          _$DataSourceSuccessResponse<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure error)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataSourceSuccessResponse<T> value) success,
    required TResult Function(DataSourceFailureResponse<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataSourceSuccessResponse<T> value)? success,
    TResult Function(DataSourceFailureResponse<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataSourceSuccessResponse<T> value)? success,
    TResult Function(DataSourceFailureResponse<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DataSourceSuccessResponse<T> implements DatasourceResponse<T> {
  const factory DataSourceSuccessResponse({required final T data}) =
      _$DataSourceSuccessResponse<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$DataSourceSuccessResponseCopyWith<T, _$DataSourceSuccessResponse<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataSourceFailureResponseCopyWith<T, $Res> {
  factory _$$DataSourceFailureResponseCopyWith(
          _$DataSourceFailureResponse<T> value,
          $Res Function(_$DataSourceFailureResponse<T>) then) =
      __$$DataSourceFailureResponseCopyWithImpl<T, $Res>;
  $Res call({Failure error});
}

/// @nodoc
class __$$DataSourceFailureResponseCopyWithImpl<T, $Res>
    extends _$DatasourceResponseCopyWithImpl<T, $Res>
    implements _$$DataSourceFailureResponseCopyWith<T, $Res> {
  __$$DataSourceFailureResponseCopyWithImpl(
      _$DataSourceFailureResponse<T> _value,
      $Res Function(_$DataSourceFailureResponse<T>) _then)
      : super(_value, (v) => _then(v as _$DataSourceFailureResponse<T>));

  @override
  _$DataSourceFailureResponse<T> get _value =>
      super._value as _$DataSourceFailureResponse<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$DataSourceFailureResponse<T>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$DataSourceFailureResponse<T> implements DataSourceFailureResponse<T> {
  const _$DataSourceFailureResponse({required this.error});

  @override
  final Failure error;

  @override
  String toString() {
    return 'DatasourceResponse<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSourceFailureResponse<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$DataSourceFailureResponseCopyWith<T, _$DataSourceFailureResponse<T>>
      get copyWith => __$$DataSourceFailureResponseCopyWithImpl<T,
          _$DataSourceFailureResponse<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataSourceSuccessResponse<T> value) success,
    required TResult Function(DataSourceFailureResponse<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataSourceSuccessResponse<T> value)? success,
    TResult Function(DataSourceFailureResponse<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataSourceSuccessResponse<T> value)? success,
    TResult Function(DataSourceFailureResponse<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DataSourceFailureResponse<T> implements DatasourceResponse<T> {
  const factory DataSourceFailureResponse({required final Failure error}) =
      _$DataSourceFailureResponse<T>;

  Failure get error;
  @JsonKey(ignore: true)
  _$$DataSourceFailureResponseCopyWith<T, _$DataSourceFailureResponse<T>>
      get copyWith => throw _privateConstructorUsedError;
}
