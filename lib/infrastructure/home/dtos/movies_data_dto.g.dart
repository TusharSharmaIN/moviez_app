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
