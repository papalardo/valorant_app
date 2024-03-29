// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  String get selectedPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({String selectedPage});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? selectedPage = freezed,
  }) {
    return _then(_value.copyWith(
      selectedPage: selectedPage == freezed
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({String selectedPage});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? selectedPage = freezed,
  }) {
    return _then(_$_HomeState(
      selectedPage: selectedPage == freezed
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState({required this.selectedPage});

  @override
  final String selectedPage;

  @override
  String toString() {
    return 'HomeState(selectedPage: $selectedPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other.selectedPage, selectedPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedPage));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({required final String selectedPage}) = _$_HomeState;

  @override
  String get selectedPage;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  String get selectedPage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedPage) setSelectedPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String selectedPage)? setSelectedPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedPage)? setSelectedPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetSelectedPage value) setSelectedPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetSelectedPage value)? setSelectedPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetSelectedPage value)? setSelectedPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
  $Res call({String selectedPage});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;

  @override
  $Res call({
    Object? selectedPage = freezed,
  }) {
    return _then(_value.copyWith(
      selectedPage: selectedPage == freezed
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$SetSelectedPageCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$SetSelectedPageCopyWith(
          _$SetSelectedPage value, $Res Function(_$SetSelectedPage) then) =
      __$$SetSelectedPageCopyWithImpl<$Res>;
  @override
  $Res call({String selectedPage});
}

/// @nodoc
class __$$SetSelectedPageCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$SetSelectedPageCopyWith<$Res> {
  __$$SetSelectedPageCopyWithImpl(
      _$SetSelectedPage _value, $Res Function(_$SetSelectedPage) _then)
      : super(_value, (v) => _then(v as _$SetSelectedPage));

  @override
  _$SetSelectedPage get _value => super._value as _$SetSelectedPage;

  @override
  $Res call({
    Object? selectedPage = freezed,
  }) {
    return _then(_$SetSelectedPage(
      selectedPage == freezed
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetSelectedPage implements SetSelectedPage {
  const _$SetSelectedPage(this.selectedPage);

  @override
  final String selectedPage;

  @override
  String toString() {
    return 'HomeEvent.setSelectedPage(selectedPage: $selectedPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedPage &&
            const DeepCollectionEquality()
                .equals(other.selectedPage, selectedPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedPage));

  @JsonKey(ignore: true)
  @override
  _$$SetSelectedPageCopyWith<_$SetSelectedPage> get copyWith =>
      __$$SetSelectedPageCopyWithImpl<_$SetSelectedPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedPage) setSelectedPage,
  }) {
    return setSelectedPage(selectedPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String selectedPage)? setSelectedPage,
  }) {
    return setSelectedPage?.call(selectedPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedPage)? setSelectedPage,
    required TResult orElse(),
  }) {
    if (setSelectedPage != null) {
      return setSelectedPage(selectedPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetSelectedPage value) setSelectedPage,
  }) {
    return setSelectedPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetSelectedPage value)? setSelectedPage,
  }) {
    return setSelectedPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetSelectedPage value)? setSelectedPage,
    required TResult orElse(),
  }) {
    if (setSelectedPage != null) {
      return setSelectedPage(this);
    }
    return orElse();
  }
}

abstract class SetSelectedPage implements HomeEvent {
  const factory SetSelectedPage(final String selectedPage) = _$SetSelectedPage;

  @override
  String get selectedPage;
  @override
  @JsonKey(ignore: true)
  _$$SetSelectedPageCopyWith<_$SetSelectedPage> get copyWith =>
      throw _privateConstructorUsedError;
}
