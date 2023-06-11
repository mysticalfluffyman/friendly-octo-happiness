import 'package:dartz/dartz.dart';

import '../../domain/entities/image_hits.dart';
import '../error/faliures.dart';

///
abstract class SearchImageUseCase {
  ///
  Future<Either<Failure, List<ImageHits>>> searchImage({
    required final String key,
    required final String searchTerm,
    required final int page,
    required final int perPage,
  });
}
