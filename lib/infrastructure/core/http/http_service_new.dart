import 'dart:async';
import 'dart:io';
import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:moviez_app/config.dart';
import 'package:moviez_app/domain/core/error/exceptions.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpService {
  late final Dio _dio;

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
        validateStatus: (status) =>
            status != null && status >= 200 && status < 500,
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
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
        logPrint: (obj) => developer.log(obj.toString()),
      ),
    ]);
  }

  Future<Response> request({
    required String method,
    required String url,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
  }) async {
    try {
      final response = await _dio.request(
        url,
        queryParameters: queryParameters,
        data: data,
        options: options?.copyWith(method: method) ?? Options(method: method),
      );

      if (response.statusCode != 200) {
        throw ServerException(
          code: response.statusCode ?? 500,
          message: response.statusMessage ?? 'Server Error',
        );
      }

      return response;
    } on DioException catch (e) {
      if (e.error is SocketException) {
        throw ServerException(
          code: 503,
          message:
              'Network Connection Error. Please check your internet connection.',
        );
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw ServerException(
          code: 408,
          message: 'Request Timeout. Please try again.',
        );
      } else if (e.response?.statusCode == 403) {
        throw ServerException(
          code: 403,
          message: 'Access Denied. Please check your API key.',
        );
      }

      throw ServerException(
        code: e.response?.statusCode ?? 500,
        message: e.message ?? 'An unexpected error occurred',
      );
    } catch (e) {
      throw ServerException(code: 500, message: e.toString());
    }
  }
}
