import 'package:dartz/dartz.dart';
import 'package:moviez_app/config.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/core/error/failure_handler.dart';
import 'package:moviez_app/domain/watchlist/entities/watchlist_movie.dart';
import 'package:moviez_app/domain/watchlist/repository/i_movie_details_repository.dart';
import 'package:moviez_app/infrastructure/core/local_storage/watchlist_storage.dart';
import 'package:moviez_app/infrastructure/watchlist/dtos/watchlist_movie_dto.dart';

class WatchlistRepository implements IWatchlistRepository {
  final Config config;
  final WatchlistStorage watchlistStorage;

  WatchlistRepository({required this.config, required this.watchlistStorage});

  @override
  Future<Either<ApiFailure, List<WatchlistMovie>>>
  getWatchlistedMovies() async {
    try {
      final watchlistedMovies = await watchlistStorage.getWatchlistedMovies();
      return Right(watchlistedMovies.map((dto) => dto.toDomain()).toList());
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, bool>> addToWatchlist({
    required WatchlistMovie movie,
  }) async {
    try {
      final movieDto = WatchlistMovieDto.fromDomain(movie);
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
