import 'package:dio/dio.dart';
import 'package:moviez_app/config.dart';

class AuthInterceptor extends Interceptor {
  final Config config;
  AuthInterceptor({required this.config});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = config.tmdbAuthToken.trim();
    options.headers.addAll({'Authorization': 'Bearer $token'});
    handler.next(options);
  }
}
