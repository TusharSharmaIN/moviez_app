import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';

part 'video.freezed.dart';

@freezed
abstract class Video with _$Video {
  const Video._();

  const factory Video({
    required StringValue key,
    required StringValue site,
    required StringValue type,
  }) = _Video;

  factory Video.empty() =>
      Video(key: StringValue(''), site: StringValue(''), type: StringValue(''));

  /// If this is a YouTube video and has a key, return full watch URL.
  String? get youtubeUrl {
    final s = site.getValue();
    final k = key.getValue();
    if (s.toLowerCase() == 'youtube' && k.isNotEmpty) {
      return 'https://www.youtube.com/watch?v=$k';
    }
    return null;
  }
}
