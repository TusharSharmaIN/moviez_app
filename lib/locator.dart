import 'package:get_it/get_it.dart';
import 'package:moviez_app/bloc/home/home_bloc.dart';
import 'package:moviez_app/config.dart';
import 'package:moviez_app/infrastructure/home/repository/home_repository.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => HomeRepository(config: locator()));
  locator.registerLazySingleton(
    () => HomeBloc(homeRepository: locator<HomeRepository>()),
  );
}
