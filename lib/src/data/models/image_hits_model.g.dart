// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_hits_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageHitsModel _$$_ImageHitsModelFromJson(Map<String, dynamic> json) =>
    _$_ImageHitsModel(
      id: json['id'] as int?,
      previewURL: json['previewURL'] as String?,
      webFormatURL: json['webformatURL'] as String?,
      largeImageURL: json['largeImageURL'] as String?,
      fullHdURL: json['fullHDURL'] as String?,
      imageURL: json['imageURL'] as String?,
      imageSize: json['imageSize'] as int?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$_ImageHitsModelToJson(_$_ImageHitsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'previewURL': instance.previewURL,
      'webformatURL': instance.webFormatURL,
      'largeImageURL': instance.largeImageURL,
      'fullHDURL': instance.fullHdURL,
      'imageURL': instance.imageURL,
      'imageSize': instance.imageSize,
      'user': instance.user,
    };
