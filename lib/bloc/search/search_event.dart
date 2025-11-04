part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.init() = _Init;

  const factory SearchEvent.onQueryChanged({required StringValue value}) =
      _OnQueryChanged;

  const factory SearchEvent.onSearch() = _OnSearch;
}
