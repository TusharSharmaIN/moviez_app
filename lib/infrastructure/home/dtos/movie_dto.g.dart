// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) => _MovieDto(
  adult: json['adult'] as bool? ?? false,
  backdropPath: json['backdrop_path'] as String? ?? '',
  genreIds:
      (json['genre_ids'] as List<dynamic>?)?.map((e) => e as num).toList() ??
      [],
  id: json['id'] as num? ?? 0,
  originalLanguage: json['original_language'] as String? ?? '',
  originalTitle: json['original_title'] as String? ?? '',
  overview: json['overview'] as String? ?? '',
  popularity: json['popularity'] as num? ?? 0,
  posterPath: json['poster_path'] as String? ?? '',
  releaseDate: json['release_date'] as String? ?? '',
  title: json['title'] as String? ?? '',
  video: json['video'] as bool? ?? false,
  voteAverage: json['vote_average'] as num? ?? 0,
  voteCount: json['vote_count'] as num? ?? 0,
);

Map<String, dynamic> _$MovieDtoToJson(_MovieDto instance) => <String, dynamic>{
  'adult': instance.adult,
  'backdrop_path': instance.backdropPath,
  'genre_ids': instance.genreIds,
  'id': instance.id,
  'original_language': instance.originalLanguage,
  'original_title': instance.originalTitle,
  'overview': instance.overview,
  'popularity': instance.popularity,
  'poster_path': instance.posterPath,
  'release_date': instance.releaseDate,
  'title': instance.title,
  'video': instance.video,
  'vote_average': instance.voteAverage,
  'vote_count': instance.voteCount,
};
