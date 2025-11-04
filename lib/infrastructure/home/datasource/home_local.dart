import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:moviez_app/domain/core/error/exceptions.dart';
import 'package:moviez_app/infrastructure/home/dtos/movies_data_dto.dart';

class HomeLocalDataSource {
  static const _nowShowingBoxName = 'now_showing_box';
  static const _popularBoxName = 'popular_box';

  late Box<List<dynamic>> _nowShowingBox;
  late Box<List<dynamic>> _popularBox;

  HomeLocalDataSource();

  Future<void> init() async {
    try {
      await Hive.initFlutter();
      if (!Hive.isAdapterRegistered(0)) {
        Hive.registerAdapter(MovieDtoAdapter());
      }

      _nowShowingBox = await Hive.openBox<List<dynamic>>(_nowShowingBoxName);
      _popularBox = await Hive.openBox<List<dynamic>>(_popularBoxName);
    } catch (e) {
      await Hive.deleteBoxFromDisk(_nowShowingBoxName);
      await Hive.deleteBoxFromDisk(_popularBoxName);
      await init();
    }
  }

  Future<void> cacheNowShowingMovies(List<MovieDto> movies) async {
    try {
      await _nowShowingBox.put('now_showing', movies);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> cachePopularMovies(List<MovieDto> movies) async {
    try {
      await _popularBox.put('popular', movies);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<List<MovieDto>> getCachedNowShowingMovies() async {
    try {
      final list = _nowShowingBox.get(
        'now_showing',
        defaultValue: <MovieDto>[],
      );
      return List<MovieDto>.from(list ?? []);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<List<MovieDto>> getCachedPopularMovies() async {
    try {
      final list = _popularBox.get('popular', defaultValue: <MovieDto>[]);
      return List<MovieDto>.from(list ?? []);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> clear() async {
    try {
      await _nowShowingBox.clear();
      await _popularBox.clear();
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
