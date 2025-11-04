import 'package:dartz/dartz.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/core/error/failure_handler.dart';
import 'package:moviez_app/domain/search/entities/search_results.dart';
import 'package:moviez_app/domain/search/repository/i_search_repository.dart';
import 'package:moviez_app/infrastructure/search/datasource/search_remote.dart';

class SearchRepository implements ISearchRepository {
  final SearchRemoteDataSource searchRemoteDataSource;

  SearchRepository({required this.searchRemoteDataSource});

  @override
  Future<Either<ApiFailure, SearchResult>> search({
    required String query,
  }) async {
    try {
      final searchResult = await searchRemoteDataSource.search(query: query);
      return Right(searchResult);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
