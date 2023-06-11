import 'package:yit/src/data/models/search_result_model.dart';

import '../../../core/error/faliures.dart';
import '../../utils/api_client.dart';
import '../../utils/api_response.dart';

///
abstract class SearchRemoteDataSource {
  ///
  Future<ApiResponse<SearchResultModel, Failure>> searchImage({
    required final String key,
    required final String searchTerm,
    required final int page,
    required final int perPage,
  });
}

///
class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  ///
  SearchRemoteDataSourceImpl({required this.client});

  ///
  final ApiClient client;
  @override
  Future<ApiResponse<SearchResultModel, Failure>> searchImage({
    required final String key,
    required final String searchTerm,
    required final int page,
    required final int perPage,
  }) async =>
      client.get(
        path: '/api',
        queryParameters: {
          'key': key,
          'q': searchTerm,
          'page': page,
          'per_page': perPage
        },
        fromJson: SearchResultModel.fromJson,
      );
}
