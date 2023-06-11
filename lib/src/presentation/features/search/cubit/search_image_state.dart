part of 'search_image_cubit.dart';

@freezed
class SearchImageState with _$SearchImageState {
  const factory SearchImageState({
    required final List<ImageHits> favoriteImages,
    required final List<ImageHits> searchImages,
    required final int pageNumber,
    required final bool changingPage,
    required final bool loadingSearch,
    final String? searchString,
  }) = _SearchImageState;
}
