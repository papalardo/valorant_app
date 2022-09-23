import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/weapons/infra/models/weapon_model.dart';
import 'package:valorant_app/modules/weapons/infra/models/weapon_skin_chroma_model.dart';
import 'package:valorant_app/modules/weapons/infra/models/weapon_skin_model.dart';
import 'package:valorant_app/modules/weapons/infra/weapons_data_source_interface.dart';
import 'package:valorant_app/utils/api/result_state.dart';

part 'weapons_event.dart';

part 'weapons_state.dart';

part 'weapons_bloc.freezed.dart';

class WeaponsBloc extends Bloc<WeaponsEvent, WeaponsState> {
  WeaponsBloc({required this.dataSource}) : super(WeaponsState.initial()) {
    on<FetchWeaponsEvent>(_fetchWeaponsEvent);
    on<LoadWeaponEvent>(_loadWeaponEvent);
    on<ClearWeaponEvent>(_clearWeaponEvent);
    on<SelectWeaponSkinEvent>(_selectWeaponSkinEvent);
    on<SelectWeaponSkinChromaEvent>(_selectWeaponSkinChromaEvent);
  }

  WeaponsDataSourceInterface dataSource;

  _fetchWeaponsEvent(
    FetchWeaponsEvent event,
    Emitter<WeaponsState> emit,
  ) async {
    emit(state.copyWith(weaponsResponse: const ResultState.loading()));
    var response = await dataSource.all();
    response.when(
      success: (data) => emit(
        state.copyWith(weaponsResponse: ResultState.data(data: data)),
      ),
      failure: (error) => emit(
        state.copyWith(weaponsResponse: ResultState.error(error: error)),
      ),
    );
  }

  _loadWeaponEvent(LoadWeaponEvent event, Emitter<WeaponsState> emit) {
    emit(state.copyWith(weaponResponse: ResultState.data(data: event.weapon)));
  }

  _clearWeaponEvent(ClearWeaponEvent event, Emitter<WeaponsState> emit) {
    emit(state.copyWith(weaponResponse: const ResultState.idle()));
  }

  _selectWeaponSkinEvent(
    SelectWeaponSkinEvent event,
    Emitter<WeaponsState> emit,
  ) {
    emit(state.copyWith(selectedSkin: ResultState.data(data: event.skin)));
    if (event.skin.chromas.length > 1) {
      emit(state.copyWith(
        selectedSkinChroma: ResultState.data(data: event.skin.chromas.first),
      ));
    }
  }

  _selectWeaponSkinChromaEvent(
    SelectWeaponSkinChromaEvent event,
    Emitter<WeaponsState> emit,
  ) {
    emit(state.copyWith(selectedSkinChroma: event.chromaResult));
  }
}
