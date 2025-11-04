part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const SearchState._();

  const factory SearchState({
    required bool isLoadingSearchResults,
    required StringValue searchQuery,
    required SearchResult searchResult,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess,
  }) = _SearchState;

  factory SearchState.initial() => SearchState(
    isLoadingSearchResults: false,
    searchQuery: StringValue(''),
    searchResult: SearchResult.empty(),
    apiFailureOrSuccess: none(),
  );
}
