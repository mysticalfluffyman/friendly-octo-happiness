import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_hits_model.dart';

part 'search_result_model.freezed.dart';
part 'search_result_model.g.dart';

///
@freezed
class SearchResultModel with _$SearchResultModel {
  ///
  factory SearchResultModel({
    final int? total,
    final int? totalHits,
    final List<ImageHitsModel>? hits,
  }) = _SearchResultModel;

  ///
  factory SearchResultModel.fromJson(final Map<String, dynamic> json) =>
      _$SearchResultModelFromJson(json);
}
