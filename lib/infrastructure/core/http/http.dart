import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:moviez_app/config.dart';
import 'package:moviez_app/domain/core/error/exceptions.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpService {
  late Dio _dio;
  Dio dio() => _dio;

  HttpService({
    required Config config,
    required List<Interceptor> interceptors,
  }) {
    _dio = Dio(
      BaseOptions(
        sendTimeout: config.httpSendTimeout,
        connectTimeout: config.httpConnectTimeout,
        receiveTimeout: config.httpReceiveTimeout,
      ),
    );
    _dio.interceptors.addAll([
      ...interceptors,
      PrettyDioLogger(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
      ),
    ]);
  }

  Future<Response> request({
    required String method,
    required Config config,
    required String url,
    dynamic data = const {}, // can be Map<String, dynamic> or FormData
    ResponseType responseType = ResponseType.json,
    String apiEndpoint = '',
    String cacheControl = '',
    Map<String, dynamic> headers = const <String, dynamic>{},
  }) async {
    try {
      _dio.options.baseUrl = config.baseUrl;
      _dio.options.method = method;
      _dio.options.responseType = responseType;
      for (final headerInfo in headers.entries) {
        _dio.options.headers[headerInfo.key] = headerInfo.value;
      }

      return await _dio.request(url, data: data);
    } on DioException catch (e) {
      if (e.error is SocketException) {
        throw SocketException(e.message ?? 'Network Connection Error');
      } else if (e.error is TimeoutException) {
        throw TimeoutException(e.message ?? 'Timeout Error');
      } else if (e.error is HttpException) {
        throw ServerException(code: 500, message: e.message ?? 'Server Error');
      } else if (e.error is FormatException) {
        throw FormatException(e.message ?? 'Format Error');
      }
      if (e.type == DioExceptionType.connectionTimeout) {
        throw TimeoutException(e.message);
      }
      throw e.response?.data['error'] ?? 'Something went wrong';
    }
  }
}
