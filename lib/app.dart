import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:moviez_app/bloc/search/search_bloc.dart';

import 'package:moviez_app/config.dart';
import 'package:moviez_app/infrastructure/core/local_storage/watchlist_storage.dart';
import 'package:moviez_app/locator.dart';
import 'package:moviez_app/presentation/router/route.dart';
import 'package:moviez_app/presentation/theme/theme_data.dart';
import 'package:moviez_app/bloc/home/home_bloc.dart';
import 'package:moviez_app/bloc/movie_details/movie_details_bloc.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');

  setupLocator();
  final config = locator<Config>();
  config.appFlavor = flavor;
  await locator<WatchlistStorage>().init();
}

void runAppWith() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(create: (context) => locator<HomeBloc>()),
        BlocProvider<MovieDetailsBloc>(
          create: (context) => locator<MovieDetailsBloc>(),
        ),
        BlocProvider<SearchBloc>(create: (context) => locator<SearchBloc>()),
      ],
      child: MaterialApp.router(
        routerConfig: goRouter,
        theme: appThemeData,
        title: locator<Config>().appName,
        debugShowCheckedModeBanner: false,
        builder: (context, child) => GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: child,
        ),
      ),
    );
  }
}
