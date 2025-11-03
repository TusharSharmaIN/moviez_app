import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/value/value_objects.dart';

part 'cast.freezed.dart';

@freezed
abstract class Cast with _$Cast {
  const Cast._();

  const factory Cast({
    required num id,
    required StringValue name,
    required StringValue profilePath,
    required StringValue character,
  }) = _Cast;

  factory Cast.empty() => Cast(
    id: 0,
    name: StringValue(''),
    profilePath: StringValue(''),
    character: StringValue(''),
  );

  String get profileImageUrl => profilePath.getValue().isNotEmpty
      ? 'https://image.tmdb.org/t/p/w500${profilePath.getValue()}'
      : '';
}
