import 'package:go_router/go_router.dart';
import 'package:moviez_app/presentation/home/home_page.dart';
import 'package:moviez_app/presentation/movie_details/movie_details_page.dart';
import 'package:moviez_app/presentation/search/search_page.dart';
import 'package:moviez_app/presentation/watchlist/watchlist_page.dart';

final goRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.search,
      builder: (context, state) => const SearchPage(),
    ),
    GoRoute(
      path: AppRoutes.movieDetails,
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>? ?? {};
        final movieId = extra['movieId'] as String? ?? '';
        return MovieDetailsPage(movieId: movieId);
      },
    ),
    GoRoute(
      path: AppRoutes.watchlist,
      builder: (context, state) => const WatchlistPage(),
    ),
  ],
);

class AppRoutes {
  static const String home = '/home';
  static const String search = '/search';
  static const String movieDetails = '/movie_details';
  static const String watchlist = '/watchlist';
}
