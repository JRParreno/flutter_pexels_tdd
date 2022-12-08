import 'package:flutter_test/flutter_test.dart';
import 'package:pexels_client/features/pexels_photo/data/models/pexels_photo_model.dart';
import 'package:pexels_client/features/pexels_photo/domain/entities/pexels_photo_src.dart';

void main() {
  const tPexelsPhotoModel = PexelsPhotoModel(
    id: "1",
    width: 300,
    height: 300,
    url: "",
    photographer: "",
    photographerUrl: "",
    photographerId: "photographerId",
    avgColor: "avgColor",
    src: PexelsPhotoSrc(
        landscape: "",
        large2x: "",
        large: "",
        medium: "",
        original: "",
        portrait: "",
        small: "",
        tiny: ""),
    liked: false,
    alt: "",
  );
}
