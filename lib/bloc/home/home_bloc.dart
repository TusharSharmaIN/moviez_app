import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/domain/home/repository/i_home_repository.dart';
import 'package:moviez_app/domain/watchlist/repository/i_movie_details_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository homeRepository;
  final IWatchlistRepository watchlistRepository;

  HomeBloc({required this.homeRepository, required this.watchlistRepository})
    : super(HomeState.initial()) {
    on<HomeEvent>(_onEvent);
  }

  Future<void> _onEvent(HomeEvent event, Emitter<HomeState> emit) async {
    await event.map(
      init: (_) async => emit(HomeState.initial()),
      loadNowShowingMovies: (e) async {
        emit(
          state.copyWith(
            isLoadingNowShowingMovies: true,
            apiFailureOrSuccess: none(),
          ),
        );

        final failureOrSuccess = await homeRepository.getNowShowingMovies();

        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoadingNowShowingMovies: false,
                apiFailureOrSuccess: optionOf(failureOrSuccess),
              ),
            );
          },
          (moviesData) {
            emit(
              state.copyWith(
                isLoadingNowShowingMovies: false,
                nowShowingMovies: moviesData,
                apiFailureOrSuccess: none(),
              ),
            );
          },
        );
      },
      loadPopularMovies: (e) async {
        emit(
          state.copyWith(
            isLoadingPopularMovies: true,
            apiFailureOrSuccess: none(),
          ),
        );

        final failureOrSuccess = await homeRepository.getPopularMovies();

        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoadingPopularMovies: false,
                apiFailureOrSuccess: optionOf(failureOrSuccess),
              ),
            );
          },
          (moviesData) {
            emit(
              state.copyWith(
                isLoadingPopularMovies: false,
                popularMovies: moviesData,
                apiFailureOrSuccess: none(),
              ),
            );
          },
        );
      },
      loadWatchlistedMovies: (e) async {
        final failureOrSuccess = await watchlistRepository
            .getWatchlistedMovies();

        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(apiFailureOrSuccess: optionOf(failureOrSuccess)),
            );
          },
          (watchlistedMovies) {
            emit(
              state.copyWith(
                watchlistedMovies: watchlistedMovies,
                apiFailureOrSuccess: none(),
              ),
            );
          },
        );
      },
    );
  }
}
