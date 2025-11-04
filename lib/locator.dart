import 'package:get_it/get_it.dart';
import 'package:moviez_app/bloc/home/home_bloc.dart';
import 'package:moviez_app/bloc/movie_details/movie_details_bloc.dart';
import 'package:moviez_app/bloc/search/search_bloc.dart';
import 'package:moviez_app/config.dart';
import 'package:moviez_app/domain/core/error/exception_handler.dart';
import 'package:moviez_app/infrastructure/core/http/http.dart';
import 'package:moviez_app/infrastructure/core/http/interceptor/auth_interceptor.dart';
import 'package:moviez_app/infrastructure/core/local_storage/watchlist_storage.dart';
import 'package:moviez_app/infrastructure/home/datasource/home_remote.dart';
import 'package:moviez_app/infrastructure/home/repository/home_repository.dart';
import 'package:moviez_app/infrastructure/movie_details/datasource/movie_details_remote.dart';
import 'package:moviez_app/infrastructure/movie_details/repository/movie_details_repository.dart';
import 'package:moviez_app/infrastructure/search/datasource/search_remote.dart';
import 'package:moviez_app/infrastructure/search/repository/search_repository.dart';
import 'package:moviez_app/infrastructure/watchlist/repository/watchlist_repository.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Core
  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => DataSourceExceptionHandler());
  locator.registerLazySingleton(
    () => AuthInterceptor(config: locator<Config>()),
  );
  locator.registerLazySingleton(
    () => HttpService(
      config: locator<Config>(),
      interceptors: [locator<AuthInterceptor>()],
    ),
  );
  locator.registerLazySingleton(() => WatchlistStorage());

  // Home
  locator.registerLazySingleton(
    () => HomeRemoteDataSource(
      config: locator<Config>(),
      dataSourceExceptionHandler: locator<DataSourceExceptionHandler>(),
      httpService: locator<HttpService>(),
    ),
  );
  locator.registerLazySingleton(
    () => HomeRepository(homeRemoteDataSource: locator<HomeRemoteDataSource>()),
  );
  locator.registerLazySingleton(
    () => WatchlistRepository(watchlistStorage: locator<WatchlistStorage>()),
  );
  locator.registerLazySingleton(
    () => HomeBloc(
      homeRepository: locator<HomeRepository>(),
      watchlistRepository: locator<WatchlistRepository>(),
    ),
  );

  // Movie Details
  locator.registerLazySingleton(
    () => MovieDetailsRemoteDataSource(
      config: locator<Config>(),
      dataSourceExceptionHandler: locator<DataSourceExceptionHandler>(),
      httpService: locator<HttpService>(),
    ),
  );
  locator.registerLazySingleton(
    () => MovieDetailsRepository(
      movieDetailsRemoteDataSource: locator<MovieDetailsRemoteDataSource>(),
      watchlistStorage: locator<WatchlistStorage>(),
    ),
  );
  locator.registerLazySingleton(
    () => MovieDetailsBloc(
      movieDetailsRepository: locator<MovieDetailsRepository>(),
      watchlistRepository: locator<WatchlistRepository>(),
    ),
  );

  // Search
  locator.registerLazySingleton(
    () => SearchRemoteDataSource(
      config: locator<Config>(),
      dataSourceExceptionHandler: locator<DataSourceExceptionHandler>(),
      httpService: locator<HttpService>(),
    ),
  );
  locator.registerLazySingleton(
    () => SearchRepository(
      searchRemoteDataSource: locator<SearchRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => SearchBloc(searchRepository: locator<SearchRepository>()),
  );
}
