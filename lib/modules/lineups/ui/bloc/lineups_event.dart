part of 'lineups_bloc.dart';

@freezed
class LineupsEvent with _$LineupsEvent {
  const factory LineupsEvent.fetchLineups() = FetchLineups;
  const factory LineupsEvent.updateFilter(LineupsFilterState filters) = UpdateFilter;
}
