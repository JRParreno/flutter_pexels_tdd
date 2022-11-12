import 'package:equatable/equatable.dart';

import 'pexels_photo_src.dart';

class PexelsPhoto extends Equatable {
  final String id;
  final int width;
  final int height;
  final String url;
  final String photographer;
  final String photographerUrl;
  final String photographerId;
  final String avgColor;
  final PexelsPhotoSrc src;
  final bool liked;
  final String alt;

  const PexelsPhoto({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
    required this.photographer,
    required this.photographerUrl,
    required this.photographerId,
    required this.avgColor,
    required this.src,
    required this.liked,
    required this.alt,
  });

  @override
  List<Object?> get props => [
        id,
        width,
        height,
        url,
        photographer,
        photographerUrl,
        photographerId,
        avgColor,
        src,
        liked,
        alt,
      ];
}
