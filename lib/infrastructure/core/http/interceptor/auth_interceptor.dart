import 'package:dio/dio.dart';
import 'package:moviez_app/config.dart';

class AuthInterceptor extends Interceptor {
  final Config config;
  AuthInterceptor({required this.config});

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    var token = config.tmdbAuthToken;
    if (token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    // options.headers['accept'] = 'application/json';
    return super.onRequest(options, handler);
  }
}
