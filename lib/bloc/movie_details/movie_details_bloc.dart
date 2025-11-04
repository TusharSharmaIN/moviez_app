import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/domain/movie_details/entities/cast.dart';
import 'package:moviez_app/domain/movie_details/entities/movie_details.dart';
import 'package:moviez_app/domain/movie_details/entities/video.dart';
import 'package:moviez_app/domain/movie_details/repository/i_movie_details_repository.dart';
import 'package:moviez_app/domain/watchlist/repository/i_movie_details_repository.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';
part 'movie_details_bloc.freezed.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final IMovieDetailsRepository movieDetailsRepository;
  final IWatchlistRepository watchlistRepository;

  MovieDetailsBloc({
    required this.movieDetailsRepository,
    required this.watchlistRepository,
  }) : super(MovieDetailsState.initial()) {
    on<MovieDetailsEvent>(_onEvent);
  }

  Future<void> _onEvent(
    MovieDetailsEvent event,
    Emitter<MovieDetailsState> emit,
  ) async {
    await event.map(
      init: (_) async => emit(MovieDetailsState.initial()),
      setMovieId: (e) async {
        emit(state.copyWith(movieId: e.movieId));
      },
      loadMovieDetails: (_) async {
        emit(
          state.copyWith(
            isLoadingMovieDetails: true,
            apiFailureOrSuccess: none(),
          ),
        );

        final failureOrSuccess = await movieDetailsRepository.getMovieDetails(
          movieId: state.movieId,
        );

        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoadingMovieDetails: false,
                apiFailureOrSuccess: optionOf(failureOrSuccess),
              ),
            );
          },
          (movieDetails) {
            emit(
              state.copyWith(
                movieDetails: movieDetails,
                apiFailureOrSuccess: none(),
              ),
            );
          },
        );
        add(const _LoadTrailerDetails());
      },
      loadTrailerDetails: (_) async {
        final failureOrSuccess = await movieDetailsRepository.getMovieVideos(
          movieId: state.movieId,
        );

        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoadingMovieDetails: false,
                apiFailureOrSuccess: optionOf(failureOrSuccess),
              ),
            );
          },
          (trailer) {
            emit(state.copyWith(trailer: trailer, apiFailureOrSuccess: none()));
          },
        );
        add(const _LoadCastDetails());
      },
      loadCastDetails: (_) async {
        final failureOrSuccess = await movieDetailsRepository.getMovieCast(
          movieId: state.movieId,
        );

        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoadingMovieDetails: false,
                apiFailureOrSuccess: optionOf(failureOrSuccess),
              ),
            );
          },
          (cast) {
            emit(
              state.copyWith(
                isLoadingMovieDetails: false,
                cast: cast,
                apiFailureOrSuccess: none(),
              ),
            );
          },
        );
      },
      addToWatchlist: (e) async {
        final failureOrSuccess = await watchlistRepository.addToWatchlist(
          movie: e.movie,
        );

        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(apiFailureOrSuccess: optionOf(failureOrSuccess)),
            );
          },
          (_) {
            emit(
              state.copyWith(isWatchlisted: true, apiFailureOrSuccess: none()),
            );
          },
        );
      },
      removeFromWatchlist: (e) async {
        final failureOrSuccess = await watchlistRepository.removeFromWatchlist(
          movieId: e.movieId,
        );

        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(apiFailureOrSuccess: optionOf(failureOrSuccess)),
            );
          },
          (_) {
            emit(
              state.copyWith(isWatchlisted: false, apiFailureOrSuccess: none()),
            );
          },
        );
      },
      checkIfMovieIsWatchlisted: (e) async {
        final failureOrSuccess = await watchlistRepository.isMovieWatchlisted(
          movieId: e.movieId,
        );
        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(apiFailureOrSuccess: optionOf(failureOrSuccess)),
            );
          },
          (isWatchlisted) {
            emit(
              state.copyWith(
                isWatchlisted: isWatchlisted,
                apiFailureOrSuccess: none(),
              ),
            );
          },
        );
      },
    );
  }
}
