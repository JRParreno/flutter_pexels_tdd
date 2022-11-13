import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:pexels_client/features/pexels_photo/domain/entities/pexels_photo.dart';
import 'package:pexels_client/features/pexels_photo/domain/entities/pexels_photo_src.dart';
import 'package:pexels_client/features/pexels_photo/domain/repositories/pexels_photo_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pexels_client/features/pexels_photo/domain/usecases/get_pexels_photo.dart';
import 'get_pexels_photo_test.mocks.dart';

class MockPexelsPhotoRepository extends Mock implements PexelsPhotoRepository {}

@GenerateMocks([MockPexelsPhotoRepository])
void main() {
  late GetPexelsPhoto usecase;
  late MockMockPexelsPhotoRepository mockPexelsPhotoRepository;

  setUp(() {
    mockPexelsPhotoRepository = MockMockPexelsPhotoRepository();
    usecase = GetPexelsPhoto(
      repository: mockPexelsPhotoRepository,
    );
  });

  // START INITIALIZATION
  const tId = "2014422";
  const tWidth = 3024;
  const tHeight = 3024;
  const tUrl =
      "https://www.pexels.com/photo/brown-rocks-during-golden-hour-2014422/";
  const tPhotographer = "Joey Farina";
  const tPhotographerUrl = "https://www.pexels.com/@joey";
  const tPhotographerId = 680589;
  const tAvgColor = "#978E82";
  const tSrc = PexelsPhotoSrc(
    original:
        "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg",
    large2x:
        "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    large:
        "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    medium:
        "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=350",
    small:
        "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=130",
    portrait:
        "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
    landscape:
        "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
    tiny:
        "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280",
  );
  const tLiked = false;
  const tAlt = "Brown Rocks During Golden Hour";

  final tGetPexelsPhoto = PexelsPhoto(
    id: tId,
    width: tWidth,
    height: tHeight,
    url: tUrl,
    photographer: tPhotographer,
    photographerUrl: tPhotographerUrl,
    photographerId: tPhotographerId.toString(),
    avgColor: tAvgColor,
    src: tSrc,
    liked: tLiked,
    alt: tAlt,
  );
  // END INITIALIZATION

  test('shoud get photo from pexels api', () async {
    // arrange
    when(mockPexelsPhotoRepository.getPexelsPhoto(id: anyNamed("id")))
        .thenAnswer((_) async => Right(tGetPexelsPhoto));
    // act
    final result = await usecase.execute(id: tId);
    // assert
    expect(result, Right(tGetPexelsPhoto));
    verify(mockPexelsPhotoRepository.getPexelsPhoto(id: tId));
    verifyNoMoreInteractions(mockPexelsPhotoRepository);
  });
}
