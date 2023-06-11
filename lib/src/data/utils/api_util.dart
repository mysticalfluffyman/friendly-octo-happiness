import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../core/error/faliures.dart';
import 'api_response.dart';

/// Map API Responses.
Future<Either<Failure, V>> mapApiResponse<T, U, V>({
  required final Future<ApiResponse<T, U>> request,
  required final FutureOr<Either<Failure, V>> Function(T?) mapData,
  final FutureOr<Failure> Function(U?)? mapFailure,
}) async =>
    (await request).when(
      (
        final content,
        final statusCode,
        final headers,
        final isRedirect,
      ) async =>
          await mapData(content),
      error: (
        final message,
        final isSocketException,
        final content,
        final statusCode,
      ) async =>
          mapFailure != null
              ? Left(await mapFailure(content))
              : Left(ServerFailure(message: message, statusCode: statusCode)),
    );
