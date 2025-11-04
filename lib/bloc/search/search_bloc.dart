import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';
import 'package:moviez_app/domain/search/entities/search_results.dart';
import 'package:moviez_app/domain/search/repository/i_search_repository.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchRepository searchRepository;

  SearchBloc({required this.searchRepository}) : super(SearchState.initial()) {
    on<SearchEvent>(_onEvent);
  }

  Future<void> _onEvent(SearchEvent event, Emitter<SearchState> emit) async {
    await event.map(
      init: (_) async => emit(SearchState.initial()),
      onQueryChanged: (e) async {
        emit(state.copyWith(searchQuery: e.value));
      },
      onSearch: (_) async {
        emit(
          state.copyWith(
            isLoadingSearchResults: true,
            apiFailureOrSuccess: none(),
          ),
        );

        final failureOrSuccess = await searchRepository.search(
          query: state.searchQuery.getValue(),
        );

        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoadingSearchResults: false,
                apiFailureOrSuccess: optionOf(failureOrSuccess),
              ),
            );
          },
          (searchResult) {
            emit(
              state.copyWith(
                isLoadingSearchResults: false,
                searchResult: searchResult,
                apiFailureOrSuccess: none(),
              ),
            );
          },
        );
      },
    );
  }
}
