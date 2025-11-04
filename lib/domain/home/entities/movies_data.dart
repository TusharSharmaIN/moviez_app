import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';

part 'movies_data.freezed.dart';

@freezed
abstract class MoviesData with _$MoviesData {
  const MoviesData._();

  const factory MoviesData({required List<Movie> results}) = _MoviesData;

  factory MoviesData.empty() => const MoviesData(results: <Movie>[]);
}

@freezed
abstract class Movie with _$Movie {
  const Movie._();

  const factory Movie({
    required StringValue backdropPath,
    required List<int> genreIds,
    required int id,
    required StringValue originalLanguage,
    required StringValue overview,
    required StringValue posterPath,
    required DateTimeValue releaseDate,
    required StringValue title,
  }) = _Movie;

  factory Movie.empty() => Movie(
    backdropPath: StringValue(''),
    genreIds: [],
    id: 0,
    originalLanguage: StringValue(''),
    overview: StringValue(''),
    posterPath: StringValue(''),
    releaseDate: DateTimeValue.fromYyyyMmDd('1970-01-01'),
    title: StringValue(''),
  );

  String get posterUrl => posterPath.isValid()
      ? 'https://image.tmdb.org/t/p/w500${posterPath.getValue()}'
      : '';

  static List<Movie> get dummyMovies => [
    Movie.empty().copyWith(
      title: StringValue('Afterburn'),
      posterPath: StringValue('/xR0IhVBjbNU34b8erhJCgRbjXo3.jpg'),
      backdropPath: StringValue('/kHOfxq7cMTXyLbj0UmdoGhT540O.jpg'),
    ),
    Movie.empty().copyWith(
      title: StringValue('Our Fault'),
      posterPath: StringValue('/yzqHt4m1SeY9FbPrfZ0C2Hi9x1s.jpg'),
      backdropPath: StringValue('/7QirCB1o80NEFpQGlQRZerZbQEp.jpg'),
    ),
  ];
}
