import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/cards/infra/data_sources/cards_data_source.dart';
import 'package:valorant_app/modules/cards/infra/models/card_model.dart';
import 'package:valorant_app/utils/api/result_state.dart';

part 'cards_bloc.freezed.dart';
part 'cards_event.dart';
part 'cards_state.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  CardsDataSource dataSource;

  CardsBloc({
    required this.dataSource,
  }) : super(CardsState.initial()) {
    on<FetchCardsEvent>(_fetchCardsEvent);
    on<SelectCardsEvent>(_selectCardsEvent);
  }

  _fetchCardsEvent(
    FetchCardsEvent event,
    Emitter<CardsState> emit,
  ) async {
    emit(state.copyWith(cardsResult: const ResultState.loading()));
    var response = await dataSource.all();

    response.when(
      success: (data) {
        emit(state.copyWith(
          cardsResult: ResultState.data(data: data),
          selectedCard: data.first,
        ));
      },
      failure: (error) => emit(
        state.copyWith(cardsResult: ResultState.error(error: error)),
      ),
    );
  }

  _selectCardsEvent(
    SelectCardsEvent event,
    Emitter<CardsState> emit,
  ) {
    emit(state.copyWith(selectedCard: event.card));
  }
}
