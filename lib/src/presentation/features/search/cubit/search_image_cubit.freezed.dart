// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchImageState {
  List<ImageHits> get favoriteImages => throw _privateConstructorUsedError;
  List<ImageHits> get searchImages => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  bool get changingPage => throw _privateConstructorUsedError;
  bool get loadingSearch => throw _privateConstructorUsedError;
  String? get searchString => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchImageStateCopyWith<SearchImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchImageStateCopyWith<$Res> {
  factory $SearchImageStateCopyWith(
          SearchImageState value, $Res Function(SearchImageState) then) =
      _$SearchImageStateCopyWithImpl<$Res, SearchImageState>;
  @useResult
  $Res call(
      {List<ImageHits> favoriteImages,
      List<ImageHits> searchImages,
      int pageNumber,
      bool changingPage,
      bool loadingSearch,
      String? searchString});
}

/// @nodoc
class _$SearchImageStateCopyWithImpl<$Res, $Val extends SearchImageState>
    implements $SearchImageStateCopyWith<$Res> {
  _$SearchImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteImages = null,
    Object? searchImages = null,
    Object? pageNumber = null,
    Object? changingPage = null,
    Object? loadingSearch = null,
    Object? searchString = freezed,
  }) {
    return _then(_value.copyWith(
      favoriteImages: null == favoriteImages
          ? _value.favoriteImages
          : favoriteImages // ignore: cast_nullable_to_non_nullable
              as List<ImageHits>,
      searchImages: null == searchImages
          ? _value.searchImages
          : searchImages // ignore: cast_nullable_to_non_nullable
              as List<ImageHits>,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      changingPage: null == changingPage
          ? _value.changingPage
          : changingPage // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingSearch: null == loadingSearch
          ? _value.loadingSearch
          : loadingSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      searchString: freezed == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchImageStateCopyWith<$Res>
    implements $SearchImageStateCopyWith<$Res> {
  factory _$$_SearchImageStateCopyWith(
          _$_SearchImageState value, $Res Function(_$_SearchImageState) then) =
      __$$_SearchImageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ImageHits> favoriteImages,
      List<ImageHits> searchImages,
      int pageNumber,
      bool changingPage,
      bool loadingSearch,
      String? searchString});
}

/// @nodoc
class __$$_SearchImageStateCopyWithImpl<$Res>
    extends _$SearchImageStateCopyWithImpl<$Res, _$_SearchImageState>
    implements _$$_SearchImageStateCopyWith<$Res> {
  __$$_SearchImageStateCopyWithImpl(
      _$_SearchImageState _value, $Res Function(_$_SearchImageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteImages = null,
    Object? searchImages = null,
    Object? pageNumber = null,
    Object? changingPage = null,
    Object? loadingSearch = null,
    Object? searchString = freezed,
  }) {
    return _then(_$_SearchImageState(
      favoriteImages: null == favoriteImages
          ? _value._favoriteImages
          : favoriteImages // ignore: cast_nullable_to_non_nullable
              as List<ImageHits>,
      searchImages: null == searchImages
          ? _value._searchImages
          : searchImages // ignore: cast_nullable_to_non_nullable
              as List<ImageHits>,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      changingPage: null == changingPage
          ? _value.changingPage
          : changingPage // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingSearch: null == loadingSearch
          ? _value.loadingSearch
          : loadingSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      searchString: freezed == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchImageState implements _SearchImageState {
  const _$_SearchImageState(
      {required final List<ImageHits> favoriteImages,
      required final List<ImageHits> searchImages,
      required this.pageNumber,
      required this.changingPage,
      required this.loadingSearch,
      this.searchString})
      : _favoriteImages = favoriteImages,
        _searchImages = searchImages;

  final List<ImageHits> _favoriteImages;
  @override
  List<ImageHits> get favoriteImages {
    if (_favoriteImages is EqualUnmodifiableListView) return _favoriteImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteImages);
  }

  final List<ImageHits> _searchImages;
  @override
  List<ImageHits> get searchImages {
    if (_searchImages is EqualUnmodifiableListView) return _searchImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchImages);
  }

  @override
  final int pageNumber;
  @override
  final bool changingPage;
  @override
  final bool loadingSearch;
  @override
  final String? searchString;

  @override
  String toString() {
    return 'SearchImageState(favoriteImages: $favoriteImages, searchImages: $searchImages, pageNumber: $pageNumber, changingPage: $changingPage, loadingSearch: $loadingSearch, searchString: $searchString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchImageState &&
            const DeepCollectionEquality()
                .equals(other._favoriteImages, _favoriteImages) &&
            const DeepCollectionEquality()
                .equals(other._searchImages, _searchImages) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.changingPage, changingPage) ||
                other.changingPage == changingPage) &&
            (identical(other.loadingSearch, loadingSearch) ||
                other.loadingSearch == loadingSearch) &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favoriteImages),
      const DeepCollectionEquality().hash(_searchImages),
      pageNumber,
      changingPage,
      loadingSearch,
      searchString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchImageStateCopyWith<_$_SearchImageState> get copyWith =>
      __$$_SearchImageStateCopyWithImpl<_$_SearchImageState>(this, _$identity);
}

abstract class _SearchImageState implements SearchImageState {
  const factory _SearchImageState(
      {required final List<ImageHits> favoriteImages,
      required final List<ImageHits> searchImages,
      required final int pageNumber,
      required final bool changingPage,
      required final bool loadingSearch,
      final String? searchString}) = _$_SearchImageState;

  @override
  List<ImageHits> get favoriteImages;
  @override
  List<ImageHits> get searchImages;
  @override
  int get pageNumber;
  @override
  bool get changingPage;
  @override
  bool get loadingSearch;
  @override
  String? get searchString;
  @override
  @JsonKey(ignore: true)
  _$$_SearchImageStateCopyWith<_$_SearchImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
