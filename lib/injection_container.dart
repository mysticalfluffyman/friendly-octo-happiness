import 'package:get_it/get_it.dart';
import 'package:yit/src/presentation/features/search/cubit/search_image_cubit.dart';

import 'src/data/repositories/search/search_remote_data_source.dart';
import 'src/data/repositories/search/search_repository_impl.dart';
import 'src/data/utils/api_client.dart';
import 'src/domain/repositories/search_repository.dart';
import 'src/domain/usecases/search_image.dart';

///
final serviceLocator = GetIt.instance;

///
Future<void> initLocator() async {
  serviceLocator
    ..registerFactory(
        () => SearchImageCubit(searchImageUseCase: serviceLocator()))
    ..registerLazySingleton(() => SearchImage(serviceLocator()))
    ..registerLazySingleton<SearchRepository>(
      () => SearchRepositoryImpl(
        searchRemoteDataSource: serviceLocator(),
      ),
    )
    ..registerLazySingleton<ApiClient>(
      () => ApiClientImpl(baseUrl: 'https://pixabay.com'),
    )
    ..registerLazySingleton<SearchRemoteDataSource>(
      () => SearchRemoteDataSourceImpl(
        client: serviceLocator.get<ApiClient>(),
      ),
    );
}
