import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pexels_client/features/pexels_video/domain/entities/pexels_video.dart';
import 'package:pexels_client/features/pexels_video/domain/entities/pexels_video_file.dart';
import 'package:pexels_client/features/pexels_video/domain/entities/pexels_video_picture.dart';
import 'package:pexels_client/features/pexels_video/domain/entities/pexels_video_user.dart';
import 'package:pexels_client/features/pexels_video/domain/repositories/pexels_video_repository.dart';
import 'package:pexels_client/features/pexels_video/domain/usecases/get_pexels_video.dart';

import 'get_pexels_video_test.mocks.dart';

class MockPexelsVideoRepository extends Mock implements PexelsVideoRepository {}

@GenerateMocks([MockPexelsVideoRepository])
void main() {
  late GetPexelsVideo usecase;
  late MockMockPexelsVideoRepository mockPexelsVideoRepository;

  setUp(() {
    mockPexelsVideoRepository = MockMockPexelsVideoRepository();
    usecase = GetPexelsVideo(mockPexelsVideoRepository);
  });

  // START INITIALIZATION
  const tId = "2499611";
  const tWidth = 1080;
  const tHeight = 1920;
  const tUrl = "https://www.pexels.com/video/2499611/";
  const tImage =
      "https://images.pexels.com/videos/2499611/free-video-2499611.jpg?fit=crop&w=1200&h=630&auto=compress&cs=tinysrgb";
  const tDuration = 22;
  const tUser = PexelsVideoUser(
    id: "680589",
    name: "Joey Farina",
    url: "https://www.pexels.com/@joey",
  );
  const tVideoFiles = [
    PexelsVideoFile(
      id: "125004",
      quality: "hd",
      fileType: "video/mp4",
      width: 1080,
      height: 1920,
      link:
          "https://player.vimeo.com/external/342571552.hd.mp4?s=6aa6f164de3812abadff3dde86d19f7a074a8a66&profile_id=175&oauth2_token_id=57447761",
    ),
    PexelsVideoFile(
      id: "125005",
      quality: "sd",
      fileType: "video/mp4",
      width: 540,
      height: 960,
      link:
          "https://player.vimeo.com/external/342571552.sd.mp4?s=e0df43853c25598dfd0ec4d3f413bce1e002deef&profile_id=165&oauth2_token_id=57447761",
    ),
    PexelsVideoFile(
      id: "125006",
      quality: "sd",
      fileType: "video/mp4",
      width: 240,
      height: 426,
      link:
          "https://player.vimeo.com/external/342571552.sd.mp4?s=e0df43853c25598dfd0ec4d3f413bce1e002deef&profile_id=139&oauth2_token_id=57447761",
    ),
    PexelsVideoFile(
      id: "125007",
      quality: "hd",
      fileType: "video/mp4",
      width: 720,
      height: 1280,
      link:
          "https://player.vimeo.com/external/342571552.hd.mp4?s=6aa6f164de3812abadff3dde86d19f7a074a8a66&profile_id=174&oauth2_token_id=57447761",
    ),
    PexelsVideoFile(
      id: "125008",
      quality: "sd",
      fileType: "video/mp4",
      width: 360,
      height: 640,
      link:
          "https://player.vimeo.com/external/342571552.sd.mp4?s=e0df43853c25598dfd0ec4d3f413bce1e002deef&profile_id=164&oauth2_token_id=57447761",
    ),
    PexelsVideoFile(
      id: "",
      quality: "",
      fileType: "",
      width: 0,
      height: 0,
      link: "",
    ),
    PexelsVideoFile(
      id: "125009",
      quality: "hls",
      fileType: "video/mp4",
      width: null,
      height: null,
      link:
          "https://player.vimeo.com/external/342571552.m3u8?s=53433233e4176eead03ddd6fea04d9fb2bce6637&oauth2_token_id=57447761",
    ),
  ];
  const List<PexelsVideoPicture> tVideoPictures = [
    PexelsVideoPicture(
        id: "308178",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-0.jpg",
        nr: 0),
    PexelsVideoPicture(
        id: "308179",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-1.jpg",
        nr: 1),
    PexelsVideoPicture(
        id: "308180",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-2.jpg",
        nr: 2),
    PexelsVideoPicture(
        id: "308181",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-3.jpg",
        nr: 3),
    PexelsVideoPicture(
        id: "308182",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-4.jpg",
        nr: 4),
    PexelsVideoPicture(
        id: "308183",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-5.jpg",
        nr: 5),
    PexelsVideoPicture(
        id: "308184",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-6.jpg",
        nr: 6),
    PexelsVideoPicture(
        id: "308185",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-7.jpg",
        nr: 7),
    PexelsVideoPicture(
        id: "308186",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-8.jpg",
        nr: 8),
    PexelsVideoPicture(
        id: "308187",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-9.jpg",
        nr: 9),
    PexelsVideoPicture(
        id: "308188",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-10.jpg",
        nr: 10),
    PexelsVideoPicture(
        id: "308189",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-11.jpg",
        nr: 11),
    PexelsVideoPicture(
        id: "308190",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-12.jpg",
        nr: 12),
    PexelsVideoPicture(
        id: "308191",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-13.jpg",
        nr: 13),
    PexelsVideoPicture(
        id: "308192",
        picture:
            "https://static-videos.pexels.com/videos/2499611/pictures/preview-14.jpg",
        nr: 14),
  ];
  const tGetPexelsVideo = PexelsVideo(
    id: tId,
    width: tWidth,
    height: tHeight,
    url: tUrl,
    image: tImage,
    duration: tDuration,
    user: tUser,
    videoFiles: tVideoFiles,
    videoPictures: tVideoPictures,
  );
  // END INITIALIZATION

  test('should get video from pexels api', () async {
    // arrange
    when(mockPexelsVideoRepository.getPexelsVideo(any))
        .thenAnswer((_) async => const Right(tGetPexelsVideo));
    // act
    final result = await usecase(const Params(tId));
    // assert
    expect(result, const Right(tGetPexelsVideo));
    verify(mockPexelsVideoRepository.getPexelsVideo(tId));
    verifyNoMoreInteractions(mockPexelsVideoRepository);
  });
}
