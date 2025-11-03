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
        baseUrl: config.baseUrl,
        sendTimeout: config.httpSendTimeout,
        connectTimeout: config.httpConnectTimeout,
        receiveTimeout: config.httpReceiveTimeout,
        validateStatus: (status) {
          return status != null && status >= 200 && status < 500;
        },
      ),
    );
    _dio.interceptors.addAll([
      ...interceptors,
      PrettyDioLogger(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        error: true,
        compact: true,
      ),
    ]);
  }

  Future<Response> request({
    required String method,
    required String url,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    ResponseType responseType = ResponseType.json,
    Map<String, dynamic> headers = const {},
  }) async {
    try {
      return await _dio.request(
        url,
        queryParameters: queryParameters,
        data: data,
        options: Options(
          method: method,
          responseType: responseType,
          headers: headers,
        ),
      );
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
