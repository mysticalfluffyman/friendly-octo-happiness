// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResultModel _$$_SearchResultModelFromJson(Map<String, dynamic> json) =>
    _$_SearchResultModel(
      total: json['total'] as int?,
      totalHits: json['totalHits'] as int?,
      hits: (json['hits'] as List<dynamic>?)
          ?.map((e) => ImageHitsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchResultModelToJson(
        _$_SearchResultModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits,
    };
