import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';

part 'search_results.freezed.dart';

@freezed
abstract class SearchResult with _$SearchResult {
  const SearchResult._();

  const factory SearchResult({required List<Movie> movies}) = _SearchResult;

  factory SearchResult.empty() => const SearchResult(movies: <Movie>[]);

  bool get isEmpty => movies.isEmpty;
}
