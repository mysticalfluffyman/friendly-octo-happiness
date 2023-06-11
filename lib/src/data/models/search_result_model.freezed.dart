// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResultModel _$SearchResultModelFromJson(Map<String, dynamic> json) {
  return _SearchResultModel.fromJson(json);
}

/// @nodoc
mixin _$SearchResultModel {
  int? get total => throw _privateConstructorUsedError;
  int? get totalHits => throw _privateConstructorUsedError;
  List<ImageHitsModel>? get hits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultModelCopyWith<SearchResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultModelCopyWith<$Res> {
  factory $SearchResultModelCopyWith(
          SearchResultModel value, $Res Function(SearchResultModel) then) =
      _$SearchResultModelCopyWithImpl<$Res, SearchResultModel>;
  @useResult
  $Res call({int? total, int? totalHits, List<ImageHitsModel>? hits});
}

/// @nodoc
class _$SearchResultModelCopyWithImpl<$Res, $Val extends SearchResultModel>
    implements $SearchResultModelCopyWith<$Res> {
  _$SearchResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHits: freezed == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int?,
      hits: freezed == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<ImageHitsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResultModelCopyWith<$Res>
    implements $SearchResultModelCopyWith<$Res> {
  factory _$$_SearchResultModelCopyWith(_$_SearchResultModel value,
          $Res Function(_$_SearchResultModel) then) =
      __$$_SearchResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, int? totalHits, List<ImageHitsModel>? hits});
}

/// @nodoc
class __$$_SearchResultModelCopyWithImpl<$Res>
    extends _$SearchResultModelCopyWithImpl<$Res, _$_SearchResultModel>
    implements _$$_SearchResultModelCopyWith<$Res> {
  __$$_SearchResultModelCopyWithImpl(
      _$_SearchResultModel _value, $Res Function(_$_SearchResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(_$_SearchResultModel(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHits: freezed == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int?,
      hits: freezed == hits
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<ImageHitsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResultModel implements _SearchResultModel {
  _$_SearchResultModel(
      {this.total, this.totalHits, final List<ImageHitsModel>? hits})
      : _hits = hits;

  factory _$_SearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultModelFromJson(json);

  @override
  final int? total;
  @override
  final int? totalHits;
  final List<ImageHitsModel>? _hits;
  @override
  List<ImageHitsModel>? get hits {
    final value = _hits;
    if (value == null) return null;
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchResultModel(total: $total, totalHits: $totalHits, hits: $hits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResultModel &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalHits, totalHits) ||
                other.totalHits == totalHits) &&
            const DeepCollectionEquality().equals(other._hits, _hits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, totalHits,
      const DeepCollectionEquality().hash(_hits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultModelCopyWith<_$_SearchResultModel> get copyWith =>
      __$$_SearchResultModelCopyWithImpl<_$_SearchResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultModelToJson(
      this,
    );
  }
}

abstract class _SearchResultModel implements SearchResultModel {
  factory _SearchResultModel(
      {final int? total,
      final int? totalHits,
      final List<ImageHitsModel>? hits}) = _$_SearchResultModel;

  factory _SearchResultModel.fromJson(Map<String, dynamic> json) =
      _$_SearchResultModel.fromJson;

  @override
  int? get total;
  @override
  int? get totalHits;
  @override
  List<ImageHitsModel>? get hits;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultModelCopyWith<_$_SearchResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
