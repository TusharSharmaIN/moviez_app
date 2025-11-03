import 'package:dio/dio.dart';
import 'package:moviez_app/config.dart';
import 'package:moviez_app/domain/core/error/exception_handler.dart';
import 'package:moviez_app/domain/movie_details/entities/cast.dart';
import 'package:moviez_app/domain/movie_details/entities/movie_details.dart';
import 'package:moviez_app/domain/movie_details/entities/video.dart';
import 'package:moviez_app/infrastructure/core/http/api_constants.dart';
import 'package:moviez_app/infrastructure/core/http/http.dart';
import 'package:moviez_app/infrastructure/movie_details/dtos/cast_dto.dart';
import 'package:moviez_app/infrastructure/movie_details/dtos/movie_details_dto.dart';
import 'package:moviez_app/infrastructure/movie_details/dtos/video_dto.dart';

class MovieDetailsRemoteDataSource {
  final Config config;
  final DataSourceExceptionHandler dataSourceExceptionHandler;
  final HttpService httpService;

  MovieDetailsRemoteDataSource({
    required this.config,
    required this.dataSourceExceptionHandler,
    required this.httpService,
  });

  Future<MovieDetails> getMovieDetails({required int movieId}) async {
    return await dataSourceExceptionHandler.handle(() async {
      final response = await httpService.request(
        method: 'GET',
        url: ApiConstants.movieDetails + movieId.toString(),
      );
      _exceptionChecker(res: response);
      return MovieDetailsDto.fromJson(response.data).toDomain();
    });
  }

  Future<List<Video>> getMovieVideos({required int movieId}) async {
    return await dataSourceExceptionHandler.handle(() async {
      final response = await httpService.request(
        method: 'GET',
        url: ApiConstants.movieVideos(movieId),
      );
      _exceptionChecker(res: response);
      return List.from(
        response.data['results'] ?? <Video>[],
      ).map((item) => VideoDto.fromJson(item).toDomain()).toList();
    });
  }

  Future<List<Cast>> getMovieCast({required int movieId}) async {
    return await dataSourceExceptionHandler.handle(() async {
      final response = await httpService.request(
        method: 'GET',
        url: ApiConstants.movieCasts(movieId),
      );
      _exceptionChecker(res: response);
      return List.from(
        response.data['cast'] ?? <Cast>[],
      ).map((item) => CastDto.fromJson(item).toDomain()).toList();
    });
  }

  void _exceptionChecker({required Response<dynamic> res}) {
    // if (res.data == null) {
    //   throw ServerException(
    //     code: res.statusCode ?? 500,
    //     message: 'Empty response received',
    //   );
    // }

    // if (res.data is! Map<String, dynamic>) {
    //   throw ServerException(
    //     code: 500,
    //     message: 'Invalid response format: expected JSON object',
    //   );
    // }

    // if (res.data['success'] == false) {
    //   throw ServerException(
    //     code: res.statusCode ?? 500,
    //     message: res.data['status_message'] ?? 'Unknown error occurred',
    //   );
    // }

    // if (res.data['results'] == null) {
    //   throw ServerException(
    //     code: 500,
    //     message: 'Invalid response format: missing results',
    //   );
    // }
  }
}
