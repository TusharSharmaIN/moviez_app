import 'package:dartz/dartz.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/search/entities/search_results.dart';

abstract class ISearchRepository {
  Future<Either<ApiFailure, SearchResult>> search({required String query});
}
