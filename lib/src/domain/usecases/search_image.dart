import 'package:dartz/dartz.dart';

import '../../core/error/faliures.dart';
import '../../core/usecases/search_image_usecase.dart';
import '../entities/image_hits.dart';
import '../repositories/search_repository.dart';

///
class SearchImage implements SearchImageUseCase {
  ///
  SearchImage(this.repository);

  ///
  final SearchRepository repository;

  ///
  @override
  Future<Either<Failure, List<ImageHits>>> searchImage({
    required final String key,
    required final String searchTerm,
    required final int page,
    required final int perPage,
  }) async =>
      repository.searchImage(
          key: key, searchTerm: searchTerm, page: page, perPage: perPage);
}
