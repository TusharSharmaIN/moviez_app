import 'package:dartz/dartz.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/movie_details/entities/cast.dart';
import 'package:moviez_app/domain/movie_details/entities/movie_details.dart';
import 'package:moviez_app/domain/movie_details/entities/video.dart';

abstract class IMovieDetailsRepository {
  Future<Either<ApiFailure, MovieDetails>> getMovieDetails({
    required int movieId,
  });

  Future<Either<ApiFailure, Video>> getMovieVideos({required int movieId});

  Future<Either<ApiFailure, List<Cast>>> getMovieCast({required int movieId});
}
