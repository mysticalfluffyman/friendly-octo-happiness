import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_hits_model.freezed.dart';
part 'image_hits_model.g.dart';

///
@freezed
class ImageHitsModel with _$ImageHitsModel {
  ///
  factory ImageHitsModel({
    final int? id,
    final String? previewURL,

    ///
    @JsonKey(name: 'webformatURL') final String? webFormatURL,
    final String? largeImageURL,
    @JsonKey(name: 'fullHDURL') final String? fullHdURL,
    final String? imageURL,
    final int? imageSize,
    final String? user,
  }) = _ImageHitsModel;

  ///
  factory ImageHitsModel.fromJson(final Map<String, dynamic> json) =>
      _$ImageHitsModelFromJson(json);
}
