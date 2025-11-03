import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';

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

@freezed
abstract class MovieDto with _$MovieDto {
  const MovieDto._();

  const factory MovieDto({
    @JsonKey(name: 'adult', defaultValue: false) required bool adult,
    @JsonKey(name: 'backdrop_path', defaultValue: '')
    required String backdropPath,
    @JsonKey(name: 'genre_ids', defaultValue: <num>[])
    required List<num> genreIds,
    @JsonKey(name: 'id', defaultValue: 0) required num id,
    @JsonKey(name: 'original_language', defaultValue: '')
    required String originalLanguage,
    @JsonKey(name: 'overview', defaultValue: '') required String overview,
    @JsonKey(name: 'poster_path', defaultValue: '') required String posterPath,
    @JsonKey(name: 'release_date', defaultValue: '')
    required String releaseDate,
    @JsonKey(name: 'title', defaultValue: '') required String title,
  }) = _MovieDto;

  Movie toDomain() => Movie(
    adult: adult,
    backdropPath: StringValue(backdropPath),
    genreIds: genreIds,
    id: id,
    originalLanguage: StringValue(originalLanguage),
    overview: StringValue(overview),
    posterPath: StringValue(posterPath),
    releaseDate: DateTimeValue.fromYyyyMmDd(releaseDate),
    title: StringValue(title),
  );

  static const empty = MovieDto(
    adult: false,
    backdropPath: '',
    genreIds: <num>[],
    id: 0,
    originalLanguage: '',
    overview: '',
    posterPath: '',
    releaseDate: '',
    title: '',
  );

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);
}
