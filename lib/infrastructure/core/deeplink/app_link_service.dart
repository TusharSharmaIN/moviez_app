import 'dart:async';
import 'package:app_links/app_links.dart';
import 'package:go_router/go_router.dart';
import 'package:moviez_app/presentation/router/route.dart';

class AppLinksService {
  final AppLinks _appLinks = AppLinks();
  final GoRouter router;
  StreamSubscription<Uri?>? _sub;

  AppLinksService(this.router);

  Future<void> init() async {
    try {
      final initial = await _appLinks.getInitialLink(); // updated method name
      _handleUri(initial);
    } catch (_) {}

    _sub = _appLinks.uriLinkStream.listen(_handleUri, onError: (_) {});
  }

  void _handleUri(Uri? uri) {
    if (uri == null) return;
    final segments = uri.pathSegments;
    if (segments.isEmpty) return;

    // deep link: moviezapp://movie/123
    if (uri.scheme == 'moviezapp' && segments.first == 'movie') {
      final id = int.tryParse(segments.length > 1 ? segments[1] : '');
      if (id != null) router.go(AppRoutes.movieDetailsWithId(id.toString()));
      return;
    }

    // web link: https://moviezapp.fake/m/123
    if ((uri.scheme == 'http' || uri.scheme == 'https') &&
        uri.host == 'moviezapp.fake' &&
        segments.isNotEmpty &&
        segments.first == 'm') {
      final id = int.tryParse(segments.length > 1 ? segments[1] : '');
      if (id != null) router.go(AppRoutes.movieDetailsWithId(id.toString()));
      return;
    }

    // query parameter pattern: moviezapp://movie?id=123
    if (uri.scheme == 'moviezapp' &&
        segments.first == 'movie' &&
        uri.queryParameters.containsKey('id')) {
      final id = int.tryParse(uri.queryParameters['id'] ?? '');
      if (id != null) router.go(AppRoutes.movieDetailsWithId(id.toString()));
    }
  }

  Future<void> dispose() async {
    await _sub?.cancel();
  }
}
