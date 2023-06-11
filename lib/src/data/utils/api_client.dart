import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_response.dart';

///
abstract class ApiClient {
  /// GET call with error handling.
  Future<ApiResponse<T, U>> get<T, U>({
    required final String path,
    final T Function(Map<String, dynamic>)? fromJson,
    final U Function(Map<String, dynamic>)? fromJsonError,
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final bool followRedirects,
  });

  /// Dispose client.
  void dispose();
}

///
class ApiClientImpl implements ApiClient {
  ///
  ApiClientImpl({required this.baseUrl}) {
    dio.options.baseUrl = baseUrl;
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
    ));
    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        retries: 3,
        logPrint: (message) => log(message),
        retryDelays: const [
          Duration(seconds: 2),
          Duration(seconds: 4),
          Duration(seconds: 6),
        ],
      ),
    );
  }

  ///
  final String baseUrl;

  ///
  Dio dio = Dio();

  @override
  void dispose() {}

  @override
  Future<ApiResponse<T, U>> get<T, U>({
    required final String path,
    final T Function(Map<String, dynamic>)? fromJson,
    final U Function(Map<String, dynamic>)? fromJsonError,
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final bool followRedirects = true,
  }) async {
    try {
      final response = await dio.get(
        path,
        queryParameters: queryParameters,
      );

      return ApiResponse(
        content: response.data != null ? fromJson?.call(response.data) : null,
        statusCode: response.statusCode,
        headers: response.headers.map,
        isRedirect: response.isRedirect,
      );
    } on DioException catch (e) {
      return ApiResponse.error(
        message: e.message ?? '',
      );
    }
  }
}
