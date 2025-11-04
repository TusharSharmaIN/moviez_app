import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';

part 'watchlist_movie.freezed.dart';

@freezed
abstract class WatchlistMovie with _$WatchlistMovie {
  const WatchlistMovie._();

  const factory WatchlistMovie({
    required StringValue backdropPath,
    required List<num> genreIds,
    required num id,
    required StringValue originalLanguage,
    required StringValue overview,
    required StringValue posterPath,
    required DateTimeValue releaseDate,
    required StringValue title,
  }) = _WatchlistMovie;

  factory WatchlistMovie.empty() => WatchlistMovie(
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

  static List<WatchlistMovie> get dummyWatchlistMovies => [
    WatchlistMovie.empty().copyWith(
      title: StringValue('Afterburn'),
      posterPath: StringValue('/xR0IhVBjbNU34b8erhJCgRbjXo3.jpg'),
      backdropPath: StringValue('/kHOfxq7cMTXyLbj0UmdoGhT540O.jpg'),
    ),
    WatchlistMovie.empty().copyWith(
      title: StringValue('Our Fault'),
      posterPath: StringValue('/yzqHt4m1SeY9FbPrfZ0C2Hi9x1s.jpg'),
      backdropPath: StringValue('/7QirCB1o80NEFpQGlQRZerZbQEp.jpg'),
    ),
  ];
}
