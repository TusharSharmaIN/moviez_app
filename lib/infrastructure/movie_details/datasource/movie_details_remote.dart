import 'package:moviez_app/domain/core/error/exception_handler.dart';
import 'package:moviez_app/domain/movie_details/entities/cast.dart';
import 'package:moviez_app/domain/movie_details/entities/movie_details.dart';
import 'package:moviez_app/domain/movie_details/entities/video.dart';
import 'package:moviez_app/infrastructure/core/http/api_client.dart';
import 'package:moviez_app/infrastructure/movie_details/dtos/cast_dto.dart';
import 'package:moviez_app/infrastructure/movie_details/dtos/video_dto.dart';

class MovieDetailsRemoteDataSource {
  final ApiClient apiClient;
  final DataSourceExceptionHandler dataSourceExceptionHandler;

  MovieDetailsRemoteDataSource({
    required this.apiClient,
    required this.dataSourceExceptionHandler,
  });

  Future<MovieDetails> getMovieDetails({required int movieId}) async {
    return await dataSourceExceptionHandler.handle(() async {
      final result = await apiClient.getMovieDetails(movieId);
      return result.toDomain();
    });
  }

  Future<List<Video>> getMovieVideos({required int movieId}) async {
    return await dataSourceExceptionHandler.handle(() async {
      final res = await apiClient.getMovieVideos(movieId);
      final results = (res)['results'] as List<dynamic>? ?? <dynamic>[];
      return results
          .map(
            (item) =>
                VideoDto.fromJson(item as Map<String, dynamic>).toDomain(),
          )
          .toList();
    });
  }

  Future<List<Cast>> getMovieCast({required int movieId}) async {
    return await dataSourceExceptionHandler.handle(() async {
      final res = await apiClient.getMovieCast(movieId);
      final castList = (res)['cast'] as List<dynamic>? ?? <dynamic>[];
      return castList
          .map(
            (item) => CastDto.fromJson(item as Map<String, dynamic>).toDomain(),
          )
          .toList();
    });
  }
}
