import 'package:dartz/dartz.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/core/error/failure_handler.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/domain/watchlist/repository/i_movie_details_repository.dart';
import 'package:moviez_app/infrastructure/core/local_storage/watchlist_storage.dart';
import 'package:moviez_app/infrastructure/home/dtos/movies_data_dto.dart';

class WatchlistRepository implements IWatchlistRepository {
  final WatchlistStorage watchlistStorage;

  WatchlistRepository({required this.watchlistStorage});

  @override
  Future<Either<ApiFailure, List<Movie>>> getWatchlistedMovies() async {
    try {
      final watchlistedMovies = await watchlistStorage.getWatchlistedMovies();
      return Right(watchlistedMovies.map((dto) => dto.toDomain()).toList());
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, bool>> addToWatchlist({
    required Movie movie,
  }) async {
    try {
      final movieDto = MovieDto.fromDomain(movie);
      await watchlistStorage.addToWatchlist(movieDto);
      return const Right(true);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, bool>> removeFromWatchlist({
    required num movieId,
  }) async {
    try {
      await watchlistStorage.removeFromWatchlist(movieId);
      return const Right(true);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, bool>> isMovieWatchlisted({
    required num movieId,
  }) async {
    try {
      final result = await watchlistStorage.isMovieWatchlisted(movieId);
      return Right(result);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
