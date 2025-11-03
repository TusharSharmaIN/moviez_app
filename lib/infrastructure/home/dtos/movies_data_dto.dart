import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/infrastructure/home/dtos/movie_dto.dart';

part 'movies_data_dto.freezed.dart';
part 'movies_data_dto.g.dart';

@freezed
abstract class MoviesDataDto with _$MoviesDataDto {
  const MoviesDataDto._();

  const factory MoviesDataDto({
    @JsonKey(name: 'results', defaultValue: <MovieDto>[])
    required List<MovieDto> results,
  }) = _MoviesDataDto;

  MoviesData toDomain() =>
      MoviesData(results: results.map((e) => e.toDomain()).toList());

  factory MoviesDataDto.fromJson(Map<String, dynamic> json) =>
      _$MoviesDataDtoFromJson(json);
}
