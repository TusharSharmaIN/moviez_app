// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CastDto _$CastDtoFromJson(Map<String, dynamic> json) => _CastDto(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  profilePath: json['profile_path'] as String? ?? '',
  character: json['character'] as String? ?? '',
);

Map<String, dynamic> _$CastDtoToJson(_CastDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'profile_path': instance.profilePath,
  'character': instance.character,
};
