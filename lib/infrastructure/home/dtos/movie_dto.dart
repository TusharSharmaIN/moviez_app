import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';
import 'package:moviez_app/domain/home/entities/movie.dart';

part 'movie_dto.freezed.dart';
part 'movie_dto.g.dart';

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
    @JsonKey(name: 'original_title', defaultValue: '')
    required String originalTitle,
    @JsonKey(name: 'overview', defaultValue: '') required String overview,
    @JsonKey(name: 'popularity', defaultValue: 0) required num popularity,
    @JsonKey(name: 'poster_path', defaultValue: '') required String posterPath,
    @JsonKey(name: 'release_date', defaultValue: '')
    required String releaseDate,
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'video', defaultValue: false) required bool video,
    @JsonKey(name: 'vote_average', defaultValue: 0) required num voteAverage,
    @JsonKey(name: 'vote_count', defaultValue: 0) required num voteCount,
  }) = _MovieDto;

  Movie toDomain() => Movie(
    adult: adult,
    backdropPath: StringValue(backdropPath),
    genreIds: genreIds,
    id: id,
    originalLanguage: StringValue(originalLanguage),
    originalTitle: StringValue(originalTitle),
    overview: StringValue(overview),
    popularity: popularity,
    posterPath: StringValue(posterPath),
    releaseDate: StringValue(releaseDate),
    title: StringValue(title),
    video: video,
    voteAverage: voteAverage,
    voteCount: voteCount,
  );

  static const empty = MovieDto(
    adult: false,
    backdropPath: '',
    genreIds: <num>[],
    id: 0,
    originalLanguage: '',
    originalTitle: '',
    overview: '',
    popularity: 0,
    posterPath: '',
    releaseDate: '',
    title: '',
    video: false,
    voteAverage: 0,
    voteCount: 0,
  );

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);
}
