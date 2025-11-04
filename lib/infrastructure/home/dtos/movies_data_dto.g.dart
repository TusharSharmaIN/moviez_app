// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoviesDataDto _$MoviesDataDtoFromJson(Map<String, dynamic> json) =>
    _MoviesDataDto(
      results:
          (json['results'] as List<dynamic>?)
              ?.map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MoviesDataDtoToJson(_MoviesDataDto instance) =>
    <String, dynamic>{'results': instance.results};

_MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) => _MovieDto(
  adult: json['adult'] as bool? ?? false,
  backdropPath: json['backdrop_path'] as String? ?? '',
  genreIds:
      (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      [],
  id: (json['id'] as num?)?.toInt() ?? 0,
  originalLanguage: json['original_language'] as String? ?? '',
  overview: json['overview'] as String? ?? '',
  posterPath: json['poster_path'] as String? ?? '',
  releaseDate: json['release_date'] as String? ?? '',
  title: json['title'] as String? ?? '',
);

Map<String, dynamic> _$MovieDtoToJson(_MovieDto instance) => <String, dynamic>{
  'adult': instance.adult,
  'backdrop_path': instance.backdropPath,
  'genre_ids': instance.genreIds,
  'id': instance.id,
  'original_language': instance.originalLanguage,
  'overview': instance.overview,
  'poster_path': instance.posterPath,
  'release_date': instance.releaseDate,
  'title': instance.title,
};
