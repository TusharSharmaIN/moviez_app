part of 'movie_details_bloc.dart';

@freezed
abstract class MovieDetailsState with _$MovieDetailsState {
  const MovieDetailsState._();

  const factory MovieDetailsState({
    required int movieId,
    required bool isLoadingMovieDetails,
    required MovieDetails movieDetails,
    required bool isLoadingTrailerDetails,
    required Video trailer,
    required bool isLoadingCastDetails,
    required List<Cast> cast,
    required bool isWatchlisted,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess,
  }) = _MovieDetailsState;

  factory MovieDetailsState.initial() => MovieDetailsState(
    movieId: 100,
    isLoadingMovieDetails: false,
    movieDetails: MovieDetails.empty(),
    isLoadingTrailerDetails: false,
    trailer: Video.empty(),
    isLoadingCastDetails: false,
    cast: const <Cast>[],
    isWatchlisted: false,
    apiFailureOrSuccess: none(),
  );
}
