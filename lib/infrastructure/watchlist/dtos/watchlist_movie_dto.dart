import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';
import 'package:moviez_app/domain/watchlist/entities/watchlist_movie.dart';

part 'watchlist_movie_dto.freezed.dart';
part 'watchlist_movie_dto.g.dart';

@freezed
@HiveType(typeId: 1)
abstract class WatchlistMovieDto with _$WatchlistMovieDto {
  const WatchlistMovieDto._();

  const factory WatchlistMovieDto({
    @HiveField(1)
    @JsonKey(name: 'backdrop_path', defaultValue: '')
    required String backdropPath,

    @HiveField(2)
    @JsonKey(name: 'genre_ids', defaultValue: <int>[])
    required List<int> genreIds,

    @HiveField(3) @JsonKey(name: 'id', defaultValue: 0) required int id,

    @HiveField(4)
    @JsonKey(name: 'original_language', defaultValue: '')
    required String originalLanguage,

    @HiveField(5)
    @JsonKey(name: 'overview', defaultValue: '')
    required String overview,

    @HiveField(6)
    @JsonKey(name: 'poster_path', defaultValue: '')
    required String posterPath,

    @HiveField(7)
    @JsonKey(name: 'release_date', defaultValue: '')
    required String releaseDate,

    @HiveField(8)
    @JsonKey(name: 'title', defaultValue: '')
    required String title,
  }) = _WatchlistMovieDto;

  WatchlistMovie toDomain() => WatchlistMovie(
    backdropPath: StringValue(backdropPath),
    genreIds: genreIds,
    id: id,
    originalLanguage: StringValue(originalLanguage),
    overview: StringValue(overview),
    posterPath: StringValue(posterPath),
    releaseDate: DateTimeValue.fromYyyyMmDd(releaseDate),
    title: StringValue(title),
  );

  factory WatchlistMovieDto.fromDomain(WatchlistMovie movie) =>
      WatchlistMovieDto(
        backdropPath: movie.backdropPath.getValue(),
        genreIds: movie.genreIds,
        id: movie.id,
        originalLanguage: movie.originalLanguage.getValue(),
        overview: movie.overview.getValue(),
        posterPath: movie.posterPath.getValue(),
        releaseDate: movie.releaseDate.getValue().toString(),
        title: movie.title.getValue(),
      );

  static const empty = WatchlistMovieDto(
    backdropPath: '',
    genreIds: <int>[],
    id: 0,
    originalLanguage: '',
    overview: '',
    posterPath: '',
    releaseDate: '',
    title: '',
  );

  factory WatchlistMovieDto.fromJson(Map<String, dynamic> json) =>
      _$WatchlistMovieDtoFromJson(json);
}
