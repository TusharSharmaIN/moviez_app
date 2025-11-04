import 'package:dartz/dartz.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/watchlist/entities/watchlist_movie.dart';

abstract class IWatchlistRepository {
  Future<Either<ApiFailure, List<WatchlistMovie>>> getWatchlistedMovies();

  Future<Either<ApiFailure, bool>> addToWatchlist({
    required WatchlistMovie movie,
  });

  Future<Either<ApiFailure, bool>> removeFromWatchlist({required num movieId});

  Future<Either<ApiFailure, bool>> isMovieWatchlisted({required num movieId});
}
