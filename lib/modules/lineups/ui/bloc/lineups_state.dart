part of 'lineups_bloc.dart';

@freezed
class LineupsFilterState with _$LineupsFilterState {
  const factory LineupsFilterState({
    required final String map,
    required final String side,
    required final String agent,
    required final String ability,
  }) = _LineupsFilterState;
}

@freezed
class LineupsState with _$LineupsState {
  const factory LineupsState({
    required final LineupsFilterState filters,
    required final ResultState<List<LineupModel>> lineups,
  }) = _LineupsState;

  factory LineupsState.initial() {
    return const LineupsState(
      filters: LineupsFilterState(
        map: 'all',
        side: 'all',
        agent: 'all',
        ability: 'all',
      ),
      lineups: ResultState.idle(),
    );
  }
}
