import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

/// ApiResponse.
@freezed
class ApiResponse<T, U> with _$ApiResponse<T, U> {
  /// ApiResponseData.
  const factory ApiResponse({
    required final T? content,
    required final int? statusCode,
    required final Map<String, List<String>> headers,
    required final bool isRedirect,
  }) = ApiResponseData;

  /// ApiResponseError.
  const factory ApiResponse.error({
    required final String message,
    final bool? isSocketException,
    final U? content,
    final int? statusCode,
  }) = ApiResponseError;
}
