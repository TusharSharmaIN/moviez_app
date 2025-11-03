import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';

part 'movie.freezed.dart';

@freezed
abstract class Movie with _$Movie {
  const Movie._();

  const factory Movie({
    required bool adult,
    required StringValue backdropPath,
    required List<num> genreIds,
    required num id,
    required StringValue originalLanguage,
    required StringValue originalTitle,
    required StringValue overview,
    required num popularity,
    required StringValue posterPath,
    required StringValue releaseDate,
    required StringValue title,
    required bool video,
    required num voteAverage,
    required num voteCount,
  }) = _Movie;

  factory Movie.empty() => Movie(
    adult: false,
    backdropPath: StringValue(''),
    genreIds: [],
    id: 0,
    originalLanguage: StringValue(''),
    originalTitle: StringValue(''),
    overview: StringValue(''),
    popularity: 0,
    posterPath: StringValue(''),
    releaseDate: StringValue(''),
    title: StringValue(''),
    video: false,
    voteAverage: 0,
    voteCount: 0,
  );

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
