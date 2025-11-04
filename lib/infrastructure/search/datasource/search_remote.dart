import 'package:dio/dio.dart';
import 'package:moviez_app/config.dart';
import 'package:moviez_app/domain/core/error/exception_handler.dart';
import 'package:moviez_app/domain/search/entities/search_results.dart';
import 'package:moviez_app/infrastructure/core/http/api_constants.dart';
import 'package:moviez_app/infrastructure/core/http/http.dart';
import 'package:moviez_app/infrastructure/search/dtos/search_result_dto.dart';

class SearchRemoteDataSource {
  final Config config;
  final DataSourceExceptionHandler dataSourceExceptionHandler;
  final HttpService httpService;

  SearchRemoteDataSource({
    required this.config,
    required this.dataSourceExceptionHandler,
    required this.httpService,
  });

  Future<SearchResult> search({required String query}) async {
    return await dataSourceExceptionHandler.handle(() async {
      final response = await httpService.request(
        method: 'GET',
        url: '${ApiConstants.searchMovie}?query=$query',
      );
      _exceptionChecker(res: response);
      final data = response.data;
      return SearchResultDto.fromJson(data).toDomain();
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
