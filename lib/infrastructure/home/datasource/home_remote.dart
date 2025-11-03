import 'package:dio/dio.dart';
import 'package:moviez_app/config.dart';
import 'package:moviez_app/domain/core/error/exception_handler.dart';
import 'package:moviez_app/domain/core/error/exceptions.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/infrastructure/core/http/api_constants.dart';
import 'package:moviez_app/infrastructure/core/http/http.dart';
import 'package:moviez_app/infrastructure/home/dtos/movies_data_dto.dart';

class HomeRemoteDataSource {
  final Config config;
  final DataSourceExceptionHandler dataSourceExceptionHandler;
  final HttpService httpService;

  HomeRemoteDataSource({
    required this.config,
    required this.dataSourceExceptionHandler,
    required this.httpService,
  });

  Future<MoviesData> getNowShowingMovies() async {
    return await dataSourceExceptionHandler.handle(() async {
      final response = await httpService.request(
        method: 'GET',
        url: ApiConstants.nowPlaying,
        queryParameters: {'language': 'en-US', 'page': '1'},
      );

      _exceptionChecker(res: response);
      return MoviesDataDto.fromJson(response.data).toDomain();
    });
  }

  void _exceptionChecker({required Response<dynamic> res}) {
    if (res.data == null) {
      throw ServerException(
        code: res.statusCode ?? 500,
        message: 'Empty response received',
      );
    }

    if (res.data is! Map<String, dynamic>) {
      throw ServerException(
        code: 500,
        message: 'Invalid response format: expected JSON object',
      );
    }

    if (res.data['success'] == false) {
      throw ServerException(
        code: res.statusCode ?? 500,
        message: res.data['status_message'] ?? 'Unknown error occurred',
      );
    }

    if (res.data['results'] == null) {
      throw ServerException(
        code: 500,
        message: 'Invalid response format: missing results',
      );
    }
  }
}
