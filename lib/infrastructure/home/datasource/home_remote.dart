import 'package:moviez_app/domain/core/error/exception_handler.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/infrastructure/core/http/api_client.dart';

class HomeRemoteDataSource {
  final ApiClient apiClient;
  final DataSourceExceptionHandler dataSourceExceptionHandler;

  HomeRemoteDataSource({
    required this.apiClient,
    required this.dataSourceExceptionHandler,
  });

  Future<MoviesData> getNowShowingMovies() async {
    return await dataSourceExceptionHandler.handle(() async {
      final result = await apiClient.getTrendingMovies('en-US', '1');
      return result.toDomain();
    });
  }

  Future<MoviesData> getPopularMovies() async {
    return await dataSourceExceptionHandler.handle(() async {
      final result = await apiClient.getPopularMovies('en-US', '1');
      return result.toDomain();
    });
  }
}
