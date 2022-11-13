import 'package:dartz/dartz.dart';
import 'package:pexels_client/core/failures.dart';
import 'package:pexels_client/features/pexels_photo/domain/entities/pexels_photo.dart';
import 'package:pexels_client/features/pexels_photo/domain/repositories/pexels_photo_repository.dart';

class GetPexelsPhoto {
  final PexelsPhotoRepository repository;

  const GetPexelsPhoto({required this.repository});

  Future<Either<Failure, PexelsPhoto>> execute({required String id}) async {
    return await repository.getPexelsPhoto(id: id);
  }
}
