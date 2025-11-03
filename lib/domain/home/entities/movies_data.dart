import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/home/entities/movie.dart';

part 'movies_data.freezed.dart';

@freezed
abstract class MoviesData with _$MoviesData {
  const MoviesData._();

  const factory MoviesData({required List<Movie> results}) = _MoviesData;

  factory MoviesData.empty() => const MoviesData(results: <Movie>[]);
}
