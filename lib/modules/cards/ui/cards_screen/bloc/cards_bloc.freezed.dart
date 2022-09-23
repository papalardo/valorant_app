// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCards,
    required TResult Function(CardModel card) selectedCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchCards,
    TResult Function(CardModel card)? selectedCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCards,
    TResult Function(CardModel card)? selectedCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCardsEvent value) fetchCards,
    required TResult Function(SelectCardsEvent value) selectedCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchCardsEvent value)? fetchCards,
    TResult Function(SelectCardsEvent value)? selectedCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCardsEvent value)? fetchCards,
    TResult Function(SelectCardsEvent value)? selectedCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsEventCopyWith<$Res> {
  factory $CardsEventCopyWith(
          CardsEvent value, $Res Function(CardsEvent) then) =
      _$CardsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardsEventCopyWithImpl<$Res> implements $CardsEventCopyWith<$Res> {
  _$CardsEventCopyWithImpl(this._value, this._then);

  final CardsEvent _value;
  // ignore: unused_field
  final $Res Function(CardsEvent) _then;
}

/// @nodoc
abstract class _$$FetchCardsEventCopyWith<$Res> {
  factory _$$FetchCardsEventCopyWith(
          _$FetchCardsEvent value, $Res Function(_$FetchCardsEvent) then) =
      __$$FetchCardsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCardsEventCopyWithImpl<$Res>
    extends _$CardsEventCopyWithImpl<$Res>
    implements _$$FetchCardsEventCopyWith<$Res> {
  __$$FetchCardsEventCopyWithImpl(
      _$FetchCardsEvent _value, $Res Function(_$FetchCardsEvent) _then)
      : super(_value, (v) => _then(v as _$FetchCardsEvent));

  @override
  _$FetchCardsEvent get _value => super._value as _$FetchCardsEvent;
}

/// @nodoc

class _$FetchCardsEvent implements FetchCardsEvent {
  const _$FetchCardsEvent();

  @override
  String toString() {
    return 'CardsEvent.fetchCards()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCardsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCards,
    required TResult Function(CardModel card) selectedCard,
  }) {
    return fetchCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchCards,
    TResult Function(CardModel card)? selectedCard,
  }) {
    return fetchCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCards,
    TResult Function(CardModel card)? selectedCard,
    required TResult orElse(),
  }) {
    if (fetchCards != null) {
      return fetchCards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCardsEvent value) fetchCards,
    required TResult Function(SelectCardsEvent value) selectedCard,
  }) {
    return fetchCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchCardsEvent value)? fetchCards,
    TResult Function(SelectCardsEvent value)? selectedCard,
  }) {
    return fetchCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCardsEvent value)? fetchCards,
    TResult Function(SelectCardsEvent value)? selectedCard,
    required TResult orElse(),
  }) {
    if (fetchCards != null) {
      return fetchCards(this);
    }
    return orElse();
  }
}

abstract class FetchCardsEvent implements CardsEvent {
  const factory FetchCardsEvent() = _$FetchCardsEvent;
}

/// @nodoc
abstract class _$$SelectCardsEventCopyWith<$Res> {
  factory _$$SelectCardsEventCopyWith(
          _$SelectCardsEvent value, $Res Function(_$SelectCardsEvent) then) =
      __$$SelectCardsEventCopyWithImpl<$Res>;
  $Res call({CardModel card});

  $CardModelCopyWith<$Res> get card;
}

/// @nodoc
class __$$SelectCardsEventCopyWithImpl<$Res>
    extends _$CardsEventCopyWithImpl<$Res>
    implements _$$SelectCardsEventCopyWith<$Res> {
  __$$SelectCardsEventCopyWithImpl(
      _$SelectCardsEvent _value, $Res Function(_$SelectCardsEvent) _then)
      : super(_value, (v) => _then(v as _$SelectCardsEvent));

  @override
  _$SelectCardsEvent get _value => super._value as _$SelectCardsEvent;

  @override
  $Res call({
    Object? card = freezed,
  }) {
    return _then(_$SelectCardsEvent(
      card == freezed
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardModel,
    ));
  }

  @override
  $CardModelCopyWith<$Res> get card {
    return $CardModelCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value));
    });
  }
}

/// @nodoc

class _$SelectCardsEvent implements SelectCardsEvent {
  const _$SelectCardsEvent(this.card);

  @override
  final CardModel card;

  @override
  String toString() {
    return 'CardsEvent.selectedCard(card: $card)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCardsEvent &&
            const DeepCollectionEquality().equals(other.card, card));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(card));

  @JsonKey(ignore: true)
  @override
  _$$SelectCardsEventCopyWith<_$SelectCardsEvent> get copyWith =>
      __$$SelectCardsEventCopyWithImpl<_$SelectCardsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCards,
    required TResult Function(CardModel card) selectedCard,
  }) {
    return selectedCard(card);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchCards,
    TResult Function(CardModel card)? selectedCard,
  }) {
    return selectedCard?.call(card);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCards,
    TResult Function(CardModel card)? selectedCard,
    required TResult orElse(),
  }) {
    if (selectedCard != null) {
      return selectedCard(card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCardsEvent value) fetchCards,
    required TResult Function(SelectCardsEvent value) selectedCard,
  }) {
    return selectedCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchCardsEvent value)? fetchCards,
    TResult Function(SelectCardsEvent value)? selectedCard,
  }) {
    return selectedCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCardsEvent value)? fetchCards,
    TResult Function(SelectCardsEvent value)? selectedCard,
    required TResult orElse(),
  }) {
    if (selectedCard != null) {
      return selectedCard(this);
    }
    return orElse();
  }
}

abstract class SelectCardsEvent implements CardsEvent {
  const factory SelectCardsEvent(final CardModel card) = _$SelectCardsEvent;

  CardModel get card;
  @JsonKey(ignore: true)
  _$$SelectCardsEventCopyWith<_$SelectCardsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CardsState {
  ResultState<List<CardModel>> get cardsResult =>
      throw _privateConstructorUsedError;
  CardModel? get selectedCard => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardsStateCopyWith<CardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsStateCopyWith<$Res> {
  factory $CardsStateCopyWith(
          CardsState value, $Res Function(CardsState) then) =
      _$CardsStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState<List<CardModel>> cardsResult, CardModel? selectedCard});

  $ResultStateCopyWith<List<CardModel>, $Res> get cardsResult;
  $CardModelCopyWith<$Res>? get selectedCard;
}

/// @nodoc
class _$CardsStateCopyWithImpl<$Res> implements $CardsStateCopyWith<$Res> {
  _$CardsStateCopyWithImpl(this._value, this._then);

  final CardsState _value;
  // ignore: unused_field
  final $Res Function(CardsState) _then;

  @override
  $Res call({
    Object? cardsResult = freezed,
    Object? selectedCard = freezed,
  }) {
    return _then(_value.copyWith(
      cardsResult: cardsResult == freezed
          ? _value.cardsResult
          : cardsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<List<CardModel>>,
      selectedCard: selectedCard == freezed
          ? _value.selectedCard
          : selectedCard // ignore: cast_nullable_to_non_nullable
              as CardModel?,
    ));
  }

  @override
  $ResultStateCopyWith<List<CardModel>, $Res> get cardsResult {
    return $ResultStateCopyWith<List<CardModel>, $Res>(_value.cardsResult,
        (value) {
      return _then(_value.copyWith(cardsResult: value));
    });
  }

  @override
  $CardModelCopyWith<$Res>? get selectedCard {
    if (_value.selectedCard == null) {
      return null;
    }

    return $CardModelCopyWith<$Res>(_value.selectedCard!, (value) {
      return _then(_value.copyWith(selectedCard: value));
    });
  }
}

/// @nodoc
abstract class _$$_CardsStateCopyWith<$Res>
    implements $CardsStateCopyWith<$Res> {
  factory _$$_CardsStateCopyWith(
          _$_CardsState value, $Res Function(_$_CardsState) then) =
      __$$_CardsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState<List<CardModel>> cardsResult, CardModel? selectedCard});

  @override
  $ResultStateCopyWith<List<CardModel>, $Res> get cardsResult;
  @override
  $CardModelCopyWith<$Res>? get selectedCard;
}

/// @nodoc
class __$$_CardsStateCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements _$$_CardsStateCopyWith<$Res> {
  __$$_CardsStateCopyWithImpl(
      _$_CardsState _value, $Res Function(_$_CardsState) _then)
      : super(_value, (v) => _then(v as _$_CardsState));

  @override
  _$_CardsState get _value => super._value as _$_CardsState;

  @override
  $Res call({
    Object? cardsResult = freezed,
    Object? selectedCard = freezed,
  }) {
    return _then(_$_CardsState(
      cardsResult: cardsResult == freezed
          ? _value.cardsResult
          : cardsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<List<CardModel>>,
      selectedCard: selectedCard == freezed
          ? _value.selectedCard
          : selectedCard // ignore: cast_nullable_to_non_nullable
              as CardModel?,
    ));
  }
}

/// @nodoc

class _$_CardsState implements _CardsState {
  const _$_CardsState({required this.cardsResult, this.selectedCard});

  @override
  final ResultState<List<CardModel>> cardsResult;
  @override
  final CardModel? selectedCard;

  @override
  String toString() {
    return 'CardsState(cardsResult: $cardsResult, selectedCard: $selectedCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardsState &&
            const DeepCollectionEquality()
                .equals(other.cardsResult, cardsResult) &&
            const DeepCollectionEquality()
                .equals(other.selectedCard, selectedCard));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cardsResult),
      const DeepCollectionEquality().hash(selectedCard));

  @JsonKey(ignore: true)
  @override
  _$$_CardsStateCopyWith<_$_CardsState> get copyWith =>
      __$$_CardsStateCopyWithImpl<_$_CardsState>(this, _$identity);
}

abstract class _CardsState implements CardsState {
  const factory _CardsState(
      {required final ResultState<List<CardModel>> cardsResult,
      final CardModel? selectedCard}) = _$_CardsState;

  @override
  ResultState<List<CardModel>> get cardsResult;
  @override
  CardModel? get selectedCard;
  @override
  @JsonKey(ignore: true)
  _$$_CardsStateCopyWith<_$_CardsState> get copyWith =>
      throw _privateConstructorUsedError;
}
