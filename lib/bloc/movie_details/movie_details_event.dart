part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsEvent with _$MovieDetailsEvent {
  const factory MovieDetailsEvent.init() = _Init;

  const factory MovieDetailsEvent.setMovieId({required String movieId}) =
      _SetMovieId;

  const factory MovieDetailsEvent.loadMovieDetails() = _LoadMovieDetails;

  const factory MovieDetailsEvent.loadTrailerDetails() = _LoadTrailerDetails;

  const factory MovieDetailsEvent.loadCastDetails() = _LoadCastDetails;

  const factory MovieDetailsEvent.addToWatchlist({
    required WatchlistMovie movie,
  }) = _AddToWatchlist;

  const factory MovieDetailsEvent.removeFromWatchlist({required num movieId}) =
      _RemoveFromWatchlist;

  // const factory MovieDetailsEvent.checkIfMovieIsWatchlisted({required num movieId}) =
  //     _CheckIfMovieIsWatchlisted;
}
