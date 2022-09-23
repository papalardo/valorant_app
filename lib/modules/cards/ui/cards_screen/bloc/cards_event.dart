part of 'cards_bloc.dart';

@freezed
class CardsEvent with _$CardsEvent {
    const factory CardsEvent.fetchCards() = FetchCardsEvent;
    const factory CardsEvent.selectedCard(CardModel card) = SelectCardsEvent;
}