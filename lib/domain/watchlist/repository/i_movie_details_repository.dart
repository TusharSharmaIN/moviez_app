import 'package:dartz/dartz.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';

abstract class IWatchlistRepository {
  Future<Either<ApiFailure, List<Movie>>> getWatchlistedMovies();

  Future<Either<ApiFailure, bool>> addToWatchlist({required Movie movie});

  Future<Either<ApiFailure, bool>> removeFromWatchlist({required num movieId});

  Future<Either<ApiFailure, bool>> isMovieWatchlisted({required num movieId});
}
