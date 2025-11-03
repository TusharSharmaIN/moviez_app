// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieDetailsDto _$MovieDetailsDtoFromJson(Map<String, dynamic> json) =>
    _MovieDetailsDto(
      backdropPath: json['backdrop_path'] as String? ?? '',
      genres:
          (json['genres'] as List<dynamic>?)
              ?.map((e) => GenreDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as num? ?? 0,
      imdbId: json['imdb_id'] as String? ?? '',
      originalLanguage: json['original_language'] as String? ?? '',
      overview: json['overview'] as String? ?? '',
      posterPath: json['poster_path'] as String? ?? '',
      releaseDate: json['release_date'] as String? ?? '',
      runtime: (json['runtime'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      video: json['video'] as bool? ?? false,
    );

Map<String, dynamic> _$MovieDetailsDtoToJson(_MovieDetailsDto instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'genres': instance.genres,
      'id': instance.id,
      'imdb_id': instance.imdbId,
      'original_language': instance.originalLanguage,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'runtime': instance.runtime,
      'title': instance.title,
      'video': instance.video,
    };

_GenreDto _$GenreDtoFromJson(Map<String, dynamic> json) =>
    _GenreDto(id: json['id'] as num? ?? 0, name: json['name'] as String? ?? '');

Map<String, dynamic> _$GenreDtoToJson(_GenreDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
