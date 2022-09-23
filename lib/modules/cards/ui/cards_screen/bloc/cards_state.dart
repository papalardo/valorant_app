part of 'cards_bloc.dart';

@freezed
class CardsState with _$CardsState {
    const factory CardsState({
        required final ResultState<List<CardModel>> cardsResult,
        final CardModel? selectedCard,
    }) = _CardsState;

    factory CardsState.initial() => const CardsState(
      cardsResult: ResultState.idle(),
    );
}