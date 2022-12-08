import 'package:pexels_client/features/pexels_photo/domain/entities/pexels_photo.dart';

import '../../domain/entities/pexels_photo_src.dart';

class PexelsPhotoModel extends PexelsPhoto {
  const PexelsPhotoModel({
    required String id,
    required int width,
    required int height,
    required String url,
    required String photographer,
    required String photographerUrl,
    required String photographerId,
    required String avgColor,
    required PexelsPhotoSrc src,
    required bool liked,
    required String alt,
  }) : super(
          id: id,
          width: width,
          height: height,
          url: url,
          photographer: photographer,
          photographerUrl: photographerUrl,
          photographerId: photographerId,
          avgColor: avgColor,
          src: src,
          liked: false,
          alt: alt,
        );
}
