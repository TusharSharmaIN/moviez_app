import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';
import 'package:moviez_app/domain/movie_details/entities/movie_details.dart';

part 'movie_details_dto.freezed.dart';
part 'movie_details_dto.g.dart';

@freezed
abstract class MovieDetailsDto with _$MovieDetailsDto {
  const MovieDetailsDto._();

  const factory MovieDetailsDto({
    @JsonKey(name: 'backdrop_path', defaultValue: '')
    required String backdropPath,
    @JsonKey(name: 'genres', defaultValue: []) required List<GenreDto> genres,
    @JsonKey(name: 'id', defaultValue: 0) required num id,
    @JsonKey(name: 'imdb_id', defaultValue: '') required String imdbId,
    @JsonKey(name: 'original_language', defaultValue: '')
    required String originalLanguage,
    
    @JsonKey(name: 'overview', defaultValue: '') required String overview,
    @JsonKey(name: 'poster_path', defaultValue: '') required String posterPath,
    @JsonKey(name: 'release_date', defaultValue: '')
    required String releaseDate,
    @JsonKey(name: 'runtime', defaultValue: 0) required num runtime,
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'video', defaultValue: false) required bool video,
  }) = _MovieDetailsDto;

  MovieDetails toDomain() => MovieDetails(
    backdropPath: StringValue(backdropPath),
    genres: genres.map((e) => e.toDomain()).toList(),
    id: id,
    imdbId: StringValue(imdbId),
    originalLanguage: StringValue(originalLanguage),
    overview: StringValue(overview),
    posterPath: StringValue(posterPath),
    releaseDate: DateTimeValue.fromYyyyMmDd(releaseDate),
    runtime: runtime,
    title: StringValue(title),
    video: video,
  );

  static const empty = MovieDetailsDto(
    backdropPath: '',
    genres: [],
    id: 0,
    imdbId: '',
    originalLanguage: '',
    overview: '',
    posterPath: '',
    releaseDate: '',
    runtime: 0,
    title: '',
    video: false,
  );

  factory MovieDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsDtoFromJson(json);
}

@freezed
abstract class GenreDto with _$GenreDto {
  const GenreDto._();

  const factory GenreDto({
    @JsonKey(name: 'id', defaultValue: 0) required num id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
  }) = _GenreDto;

  Genre toDomain() => Genre(id: id, name: StringValue(name));

  static const empty = GenreDto(id: 0, name: '');

  factory GenreDto.fromJson(Map<String, dynamic> json) =>
      _$GenreDtoFromJson(json);
}
