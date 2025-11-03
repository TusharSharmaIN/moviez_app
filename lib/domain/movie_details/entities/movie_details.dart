import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';

part 'movie_details.freezed.dart';

@freezed
abstract class MovieDetails with _$MovieDetails {
  const MovieDetails._();

  const factory MovieDetails({
    required StringValue backdropPath,
    required List<Genre> genres,
    required num id,
    required StringValue imdbId,
    required StringValue originalLanguage,
    required StringValue overview,
    required StringValue posterPath,
    required DateTimeValue releaseDate,
    required num runtime,
    required StringValue title,
    required bool video,
  }) = _MovieDetails;

  factory MovieDetails.empty() => MovieDetails(
    backdropPath: StringValue(''),
    genres: [],
    id: 0,
    imdbId: StringValue(''),
    originalLanguage: StringValue(''),
    overview: StringValue(''),
    posterPath: StringValue(''),
    releaseDate: DateTimeValue.fromYyyyMmDd('1970-01-01'),
    runtime: 0,
    title: StringValue(''),
    video: false,
  );

  String get posterUrl =>
      'https://image.tmdb.org/t/p/w500${posterPath.getValue()}';

  String get backdropUrl =>
      'https://image.tmdb.org/t/p/original${backdropPath.getValue()}';
}

@freezed
abstract class Genre with _$Genre {
  const Genre._();

  const factory Genre({required num id, required StringValue name}) = _Genre;

  factory Genre.empty() => Genre(id: 0, name: StringValue(''));
}
