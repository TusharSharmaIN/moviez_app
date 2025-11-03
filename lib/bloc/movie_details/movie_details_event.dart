part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsEvent with _$MovieDetailsEvent {
  const factory MovieDetailsEvent.init() = _Init;

  const factory MovieDetailsEvent.setMovieId({required String movieId}) =
      _SetMovieId;

  const factory MovieDetailsEvent.loadMovieDetails() = _LoadMovieDetails;
}
