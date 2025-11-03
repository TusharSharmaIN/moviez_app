import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Flavor { dev, prod }

class Config {
  Flavor appFlavor = Flavor.prod;
  Duration httpSendTimeout = const Duration(milliseconds: 600000);
  Duration httpConnectTimeout = const Duration(milliseconds: 600000);
  Duration httpReceiveTimeout = const Duration(milliseconds: 600000);

  String get env {
    switch (appFlavor) {
      case Flavor.dev:
        return 'dev';
      case Flavor.prod:
        return 'prod';
    }
  }

  String get appName {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Moviez Dev';
      case Flavor.prod:
        return 'Moviez';
    }
  }

  String get baseUrl {
    switch (appFlavor) {
      case Flavor.dev:
      case Flavor.prod:
        return 'https://api.themoviedb.org/3/';
    }
  }

  String get tmdbAuthToken {
    switch (appFlavor) {
      case Flavor.dev:
      case Flavor.prod:
        return dotenv.env['TMDB_AUTH_TOKEN'] ?? '';
    }
  }
}
