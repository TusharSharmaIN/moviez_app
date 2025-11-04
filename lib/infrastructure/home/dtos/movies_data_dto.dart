import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
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
@HiveType(typeId: 1)
abstract class MovieDto with _$MovieDto {
  const MovieDto._();

  const factory MovieDto({
    @HiveField(1)
    @JsonKey(name: 'backdrop_path', defaultValue: '')
    required String backdropPath,
    
    @HiveField(2)
    @JsonKey(name: 'genre_ids', defaultValue: <int>[])
    required List<int> genreIds,
    
    @HiveField(3)
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    
    @HiveField(4)
    @JsonKey(name: 'original_language', defaultValue: '')
    required String originalLanguage,
    
    @HiveField(5)
    @JsonKey(name: 'overview', defaultValue: '') required String overview,
    
    @HiveField(6)
    @JsonKey(name: 'poster_path', defaultValue: '') required String posterPath,
    
    @HiveField(7)
    @JsonKey(name: 'release_date', defaultValue: '')
    required String releaseDate,
    
    @HiveField(8)
    @JsonKey(name: 'title', defaultValue: '') required String title,
  }) = _MovieDto;

  Movie toDomain() => Movie(
    backdropPath: StringValue(backdropPath),
    genreIds: genreIds,
    id: id,
    originalLanguage: StringValue(originalLanguage),
    overview: StringValue(overview),
    posterPath: StringValue(posterPath),
    releaseDate: DateTimeValue.fromYyyyMmDd(releaseDate),
    title: StringValue(title),
  );

  factory MovieDto.fromDomain(Movie movie) => MovieDto(
    backdropPath: movie.backdropPath.getValue(),
    genreIds: movie.genreIds,
    id: movie.id,
    originalLanguage: movie.originalLanguage.getValue(),
    overview: movie.overview.getValue(),
    posterPath: movie.posterPath.getValue(),
    releaseDate: movie.releaseDate.getValue().toString(),
    title: movie.title.getValue(),
  );

  static const empty = MovieDto(
    backdropPath: '',
    genreIds: <int>[],
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
