part of 'movie_details_bloc.dart';

@freezed
abstract class MovieDetailsState with _$MovieDetailsState {
  const MovieDetailsState._();

  const factory MovieDetailsState({
    required bool isLoadingMovieDetails,
    required int movieId,
    required MovieDetails movieDetails,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess,
  }) = _MovieDetailsState;

  factory MovieDetailsState.initial() => MovieDetailsState(
    isLoadingMovieDetails: false,
    movieId: 100,
    movieDetails: MovieDetails.empty(),
    apiFailureOrSuccess: none(),
  );
}
