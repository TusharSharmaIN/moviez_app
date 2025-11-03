import 'package:get_it/get_it.dart';
import 'package:moviez_app/bloc/home/home_bloc.dart';
import 'package:moviez_app/config.dart';
import 'package:moviez_app/domain/core/error/exception_handler.dart';
import 'package:moviez_app/infrastructure/core/http/http.dart';
import 'package:moviez_app/infrastructure/core/http/interceptor/auth_interceptor.dart';
import 'package:moviez_app/infrastructure/home/datasource/home_remote.dart';
import 'package:moviez_app/infrastructure/home/repository/home_repository.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
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
  locator.registerLazySingleton(
    () => HomeRemoteDataSource(
      config: locator<Config>(),
      dataSourceExceptionHandler: locator<DataSourceExceptionHandler>(),
      httpService: locator<HttpService>(),
    ),
  );
  locator.registerLazySingleton(
    () => HomeRepository(
      config: locator<Config>(),
      homeRemoteDataSource: locator<HomeRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => HomeBloc(homeRepository: locator<HomeRepository>()),
  );
}
