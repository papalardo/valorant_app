import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/services/http/http_inferface.dart';

part 'home_state.dart';

part 'home_event.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HttpInterface http;

  HomeBloc({
    required this.http,
  }) : super(const HomeState(selectedPage: '/crosshairs')) {
    on<SetSelectedPage>((event, emit) {
      emit(HomeState(selectedPage: event.selectedPage));
    });
  }
}
