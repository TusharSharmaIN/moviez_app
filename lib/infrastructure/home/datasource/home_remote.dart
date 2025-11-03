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
      final uri = Uri.parse(
        ApiConstants.nowPlaying,
      ).replace(queryParameters: {'language': 'en-US', 'page': '1'});
      final response = await httpService.request(
        method: 'GET',
        url: uri.toString(),
        config: config,
      );

      _exceptionChecker(res: response);
      return MoviesDataDto.fromJson(response.data).toDomain();
    });
  }

  void _exceptionChecker({required Response<dynamic> res}) {
    if (res.statusCode != 200 && res.statusCode != 201) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? 'Server error occurred',
      );
    }

    if (res.data == null ||
        res.data is! List && res.data is! Map<String, dynamic>) {
      throw ServerException(code: 500, message: 'Invalid response format');
    }

    if (res.data is Map<String, dynamic>) {
      if (res.data['error'] != null && res.data['error'].isNotEmpty) {
        throw ServerException(message: res.data['error']['message']);
      }
    }
  }
}
