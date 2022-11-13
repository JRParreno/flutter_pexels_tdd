import 'package:dartz/dartz.dart';

import '../../../../core/failures.dart';
import '../entities/pexels_video.dart';

abstract class PexelsVideoRepository {
  Future<Either<Failure, PexelsVideo>> getPexelsVideo(String id);
}
