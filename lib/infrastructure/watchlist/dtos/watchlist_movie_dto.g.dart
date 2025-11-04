// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_movie_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WatchlistMovieDtoAdapter extends TypeAdapter<WatchlistMovieDto> {
  @override
  final typeId = 1;

  @override
  WatchlistMovieDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WatchlistMovieDto(
      backdropPath: fields[1] as String,
      genreIds: (fields[2] as List).cast<int>(),
      id: (fields[3] as num).toInt(),
      originalLanguage: fields[4] as String,
      overview: fields[5] as String,
      posterPath: fields[6] as String,
      releaseDate: fields[7] as String,
      title: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WatchlistMovieDto obj) {
    writer
      ..writeByte(8)
      ..writeByte(1)
      ..write(obj.backdropPath)
      ..writeByte(2)
      ..write(obj.genreIds)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.originalLanguage)
      ..writeByte(5)
      ..write(obj.overview)
      ..writeByte(6)
      ..write(obj.posterPath)
      ..writeByte(7)
      ..write(obj.releaseDate)
      ..writeByte(8)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WatchlistMovieDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WatchlistMovieDto _$WatchlistMovieDtoFromJson(Map<String, dynamic> json) =>
    _WatchlistMovieDto(
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

Map<String, dynamic> _$WatchlistMovieDtoToJson(_WatchlistMovieDto instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
    };
