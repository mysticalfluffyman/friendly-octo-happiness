import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yit/src/domain/usecases/search_image.dart';

import '../../../../domain/entities/image_hits.dart';

part 'search_image_state.dart';
part 'search_image_cubit.freezed.dart';

class SearchImageCubit extends Cubit<SearchImageState> {
  SearchImageCubit({
    required final SearchImage searchImageUseCase,
  })  : _searchImageUseCase = searchImageUseCase,
        super(const SearchImageState(
            favoriteImages: [],
            searchImages: [],
            pageNumber: 1,
            loadingSearch: false,
            changingPage: false));

  ///
  final SearchImage _searchImageUseCase;

  void addToFavorites({required final ImageHits image}) {
    List<ImageHits> currentFavorite = [];
    currentFavorite.addAll(state.favoriteImages);
    currentFavorite.add(image);
    emit(state.copyWith(favoriteImages: currentFavorite));
  }

  void searchImage({
    required final String searchString,
  }) async {
    if (!state.changingPage) {
      emit(state.copyWith(loadingSearch: true));
    }
    final result = await _searchImageUseCase.searchImage(
        key: '25028728-38692d914eeed734c5ae48ef7',
        searchTerm: searchString.replaceAll(' ', '+'),
        page: state.pageNumber,
        perPage: 20);
    result.fold(
        (failure) => print('Failed ===> ${failure}'),
        (success) => emit(state.copyWith(
            changingPage: false,
            loadingSearch: false,
            searchImages: success,
            searchString: searchString.replaceAll(' ', '+'))));
  }

  void removeFromFavorites({required final ImageHits image}) {
    List<ImageHits> currentFavorite = [];
    currentFavorite.addAll(state.favoriteImages);
    currentFavorite.remove(image);
    emit(state.copyWith(favoriteImages: currentFavorite));
  }

  void addPage() {
    int currentPage = state.pageNumber;
    emit(state.copyWith(pageNumber: currentPage + 1, changingPage: true));
    searchImage(searchString: state.searchString ?? '');
  }

  void goBackPage() {
    int currentPage = state.pageNumber;
    emit(state.copyWith(pageNumber: currentPage - 1, changingPage: true));
    searchImage(searchString: state.searchString ?? '');
  }
}
