import 'package:dartz/dartz.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/core/error/failure_handler.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/domain/watchlist/repository/i_movie_details_repository.dart';
import 'package:moviez_app/infrastructure/home/dtos/movies_data_dto.dart';
import 'package:moviez_app/infrastructure/watchlist/datasource/watchlist_local.dart';

class WatchlistRepository implements IWatchlistRepository {
  final WatchlistLocalDataSource watchlistLocalDataSource;

  WatchlistRepository({required this.watchlistLocalDataSource});

  @override
  Future<Either<ApiFailure, List<Movie>>> getWatchlistedMovies() async {
    try {
      final watchlistedMovies = await watchlistLocalDataSource.getWatchlistedMovies();
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
      await watchlistLocalDataSource.addToWatchlist(movieDto);
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
      await watchlistLocalDataSource.removeFromWatchlist(movieId);
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
      final result = await watchlistLocalDataSource.isMovieWatchlisted(movieId);
      return Right(result);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
