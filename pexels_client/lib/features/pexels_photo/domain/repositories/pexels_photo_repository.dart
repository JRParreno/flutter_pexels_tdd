import 'package:dartz/dartz.dart';
import '../../../../core/failures.dart';
import '../entities/pexels_photo.dart';

// practice to use named arguments
abstract class PexelsPhotoRepository {
  Future<Either<Failure, PexelsPhoto>> getPexelsPhoto({required String id});
}
