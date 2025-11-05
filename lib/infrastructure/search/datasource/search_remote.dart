import 'package:moviez_app/domain/core/error/exception_handler.dart';
import 'package:moviez_app/domain/search/entities/search_results.dart';
import 'package:moviez_app/infrastructure/core/http/api_client.dart';

class SearchRemoteDataSource {
  final ApiClient apiClient;
  final DataSourceExceptionHandler dataSourceExceptionHandler;

  SearchRemoteDataSource({
    required this.apiClient,
    required this.dataSourceExceptionHandler,
  });

  Future<SearchResult> search({required String query}) async {
    return await dataSourceExceptionHandler.handle(() async {
      final res = await apiClient.searchMovies(query);
      return res.toDomain();
    });
  }
}
