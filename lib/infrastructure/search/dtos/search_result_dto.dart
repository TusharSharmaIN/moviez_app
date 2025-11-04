import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/search/entities/search_results.dart';
import 'package:moviez_app/infrastructure/home/dtos/movies_data_dto.dart';

part 'search_result_dto.freezed.dart';
part 'search_result_dto.g.dart';

@freezed
abstract class SearchResultDto with _$SearchResultDto {
  const SearchResultDto._();

  const factory SearchResultDto({
    @JsonKey(name: 'results', defaultValue: <MovieDto>[])
    required List<MovieDto> movies,
  }) = _SearchResultDto;

  SearchResult toDomain() =>
      SearchResult(movies: movies.map((e) => e.toDomain()).toList());

  factory SearchResultDto.fromJson(Map<String, dynamic> json) =>
      _$SearchResultDtoFromJson(json);
}
