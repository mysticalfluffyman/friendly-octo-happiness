import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_hits.freezed.dart';

///
@freezed
class ImageHits with _$ImageHits {
  ///
  const factory ImageHits({
    final int? id,
    final String? previewURL,
    final String? webFormatURL,
    final String? largeImageURL,
    final String? fullHdURL,
    final String? imageURL,
    final int? imageSize,
    final String? user,
  }) = _ImageHits;
}
