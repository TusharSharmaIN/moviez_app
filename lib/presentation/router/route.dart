import 'package:go_router/go_router.dart';
import 'package:moviez_app/presentation/home/home_page.dart';
import 'package:moviez_app/presentation/search/search_page.dart';

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
    // GoRoute(
    //   path: AppRoutes.productDetails,
    //   builder: (context, state) {
    //     final extra = state.extra as Map<String, Product>;
    //     final product = extra['product'] ?? Product.empty();
    //     return ProductDetailsPage(product: product);
    //   },
    // ),
  ],
);

class AppRoutes {
  static const String home = '/home';
  static const String search = '/search';
}
