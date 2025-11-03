import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/movie_details/repository/i_movie_details_repository.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';
part 'movie_details_bloc.freezed.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final IMovieDetailsRepository movieDetailsRepository;

  MovieDetailsBloc({required this.movieDetailsRepository})
    : super(MovieDetailsState.initial()) {
    on<MovieDetailsEvent>(_onEvent);
  }

  Future<void> _onEvent(
    MovieDetailsEvent event,
    Emitter<MovieDetailsState> emit,
  ) async {
    await event.map(
      init: (_) async => emit(MovieDetailsState.initial()),
      setMovieId: (e) async {
        emit(state.copyWith(movieId: int.tryParse(e.movieId) ?? state.movieId));
      },
      loadMovieDetails: (e) async {
        emit(
          state.copyWith(
            isLoadingMovieDetails: true,
            apiFailureOrSuccess: none(),
          ),
        );

        final result = await movieDetailsRepository.getMovieDetails(
          movieId: state.movieId,
        );
        result.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoadingMovieDetails: false,
                apiFailureOrSuccess: none(),
              ),
            );
          },
          (_) {
            emit(
              state.copyWith(
                isLoadingMovieDetails: false,
                // nowShowingMovies: moviesData,
              ),
            );
          },
        );
      },
    );
  }
}
