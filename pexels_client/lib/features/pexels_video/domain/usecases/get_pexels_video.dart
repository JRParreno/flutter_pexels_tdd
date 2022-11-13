import 'package:dartz/dartz.dart';
import 'package:pexels_client/features/pexels_video/domain/entities/pexels_video.dart';
import 'package:pexels_client/features/pexels_video/domain/repositories/pexels_video_repository.dart';

import '../../../../core/failures.dart';

class GetPexelsVideo {
  final PexelsVideoRepository repository;

  const GetPexelsVideo(this.repository);
  Future<Either<Failure, PexelsVideo>> execute(String id) async {
    return await repository.getPexelsVideo(id);
  }
}
