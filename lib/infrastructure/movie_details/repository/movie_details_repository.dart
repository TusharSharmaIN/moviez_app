import 'package:dartz/dartz.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/core/error/failure_handler.dart';
import 'package:moviez_app/domain/movie_details/entities/cast.dart';
import 'package:moviez_app/domain/movie_details/entities/movie_details.dart';
import 'package:moviez_app/domain/movie_details/entities/video.dart';
import 'package:moviez_app/domain/movie_details/repository/i_movie_details_repository.dart';
import 'package:moviez_app/infrastructure/movie_details/datasource/movie_details_remote.dart';
import 'package:moviez_app/infrastructure/watchlist/datasource/watchlist_local.dart';

class MovieDetailsRepository implements IMovieDetailsRepository {
  final MovieDetailsRemoteDataSource movieDetailsRemoteDataSource;
  final WatchlistLocalDataSource watchlistLocalDataSource;

  MovieDetailsRepository({
    required this.movieDetailsRemoteDataSource,
    required this.watchlistLocalDataSource,
  });

  @override
  Future<Either<ApiFailure, MovieDetails>> getMovieDetails({
    required int movieId,
  }) async {
    try {
      final result = await movieDetailsRemoteDataSource.getMovieDetails(
        movieId: movieId,
      );
      return Right(result);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Video>> getMovieVideos({
    required int movieId,
  }) async {
    try {
      final result = await movieDetailsRemoteDataSource.getMovieVideos(
        movieId: movieId,
      );
      return Right(result.last);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<Cast>>> getMovieCast({
    required int movieId,
  }) async {
    try {
      final result = await movieDetailsRemoteDataSource.getMovieCast(
        movieId: movieId,
      );
      return Right(result);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
