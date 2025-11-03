import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';
import 'package:moviez_app/domain/movie_details/entities/video.dart';

part 'video_dto.freezed.dart';
part 'video_dto.g.dart';

@freezed
abstract class VideoDto with _$VideoDto {
  const VideoDto._();

  const factory VideoDto({
    @JsonKey(name: 'key', defaultValue: '') required String key,
    @JsonKey(name: 'site', defaultValue: '') required String site,
    @JsonKey(name: 'type', defaultValue: '') required String type,
  }) = _VideoDto;

  Video toDomain() => Video(
    key: StringValue(key),
    site: StringValue(site),
    type: StringValue(type),
  );

  static const empty = VideoDto(key: '', site: '', type: '');

  factory VideoDto.fromJson(Map<String, dynamic> json) =>
      _$VideoDtoFromJson(json);
}
