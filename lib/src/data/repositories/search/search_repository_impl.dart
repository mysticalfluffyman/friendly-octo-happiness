import 'package:dartz/dartz.dart';

import '../../../core/error/faliures.dart';
import '../../../domain/entities/image_hits.dart';
import '../../../domain/repositories/search_repository.dart';
import '../../utils/api_util.dart';
import 'search_remote_data_source.dart';

///
class SearchRepositoryImpl implements SearchRepository {
  ///
  SearchRepositoryImpl({required this.searchRemoteDataSource});

  ///
  final SearchRemoteDataSource searchRemoteDataSource;
  @override
  Future<Either<Failure, List<ImageHits>>> searchImage({
    required final String key,
    required final String searchTerm,
    required final int page,
    required final int perPage,
  }) async =>
      mapApiResponse(
        request: searchRemoteDataSource.searchImage(
            key: key, searchTerm: searchTerm, page: page, perPage: perPage),
        mapData: (final e) => Right(((e?.hits) ?? []).map((e) {
          return ImageHits(
              id: e.id,
              fullHdURL: e.fullHdURL,
              imageSize: e.imageSize,
              webFormatURL: e.webFormatURL,
              user: e.user,
              previewURL: e.previewURL,
              largeImageURL: e.largeImageURL,
              imageURL: e.imageURL);
        }).toList()),
      );
}
