import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';
import 'package:moviez_app/domain/movie_details/entities/cast.dart';

part 'cast_dto.freezed.dart';
part 'cast_dto.g.dart';

@freezed
abstract class CastDto with _$CastDto {
  const CastDto._();

  const factory CastDto({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'profile_path', defaultValue: '')
    required String profilePath,
    @JsonKey(name: 'character', defaultValue: '') required String character,
  }) = _CastDto;

  Cast toDomain() => Cast(
    id: id,
    name: StringValue(name),
    profilePath: StringValue(profilePath),
    character: StringValue(character),
  );

  static const empty = CastDto(id: 0, name: '', profilePath: '', character: '');

  factory CastDto.fromJson(Map<String, dynamic> json) =>
      _$CastDtoFromJson(json);
}
