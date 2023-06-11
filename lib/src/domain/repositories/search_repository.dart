import 'package:dartz/dartz.dart';

import '../../core/error/faliures.dart';
import '../entities/image_hits.dart';

///
abstract class SearchRepository {
  ///
  Future<Either<Failure, List<ImageHits>>> searchImage({
    required final String key,
    required final String searchTerm,
    required final int page,
    required final int perPage,
  });
}
