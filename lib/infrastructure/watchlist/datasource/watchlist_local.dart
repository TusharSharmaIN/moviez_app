import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:moviez_app/domain/core/error/exceptions.dart';
import 'package:moviez_app/infrastructure/home/dtos/movies_data_dto.dart';

class WatchlistLocalDataSource {
  static const _boxName = 'watchlist_box';
  static const _watchlistKey = 'watchlist';

  late Box<List<dynamic>> _box;

  WatchlistLocalDataSource();

  Future<void> init() async {
    try {
      await Hive.initFlutter();
      if (!Hive.isAdapterRegistered(0)) {
        Hive.registerAdapter(MovieDtoAdapter());
      }
      _box = await Hive.openBox<List<dynamic>>(_boxName);
    } catch (e) {
      await Hive.deleteBoxFromDisk(_boxName);
      await init();
    }
  }

  Future<List<MovieDto>> getWatchlistedMovies() async {
    try {
      final list = _box.get(_watchlistKey, defaultValue: <MovieDto>[]);
      if (list == null) return [];
      return List<MovieDto>.from(list);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> addToWatchlist(MovieDto movie) async {
    try {
      final currentList = await getWatchlistedMovies();
      if (!currentList.any((m) => m.id == movie.id)) {
        currentList.add(movie);
        await _box.put(_watchlistKey, currentList);
      }
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> removeFromWatchlist(num movieId) async {
    try {
      final currentList = await getWatchlistedMovies();
      currentList.removeWhere((movie) => movie.id == movieId);
      await _box.put(_watchlistKey, currentList);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<bool> isMovieWatchlisted(num movieId) async {
    try {
      final currentList = await getWatchlistedMovies();
      return currentList.any((movie) => movie.id == movieId);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> clear() async {
    try {
      await _box.clear();
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
