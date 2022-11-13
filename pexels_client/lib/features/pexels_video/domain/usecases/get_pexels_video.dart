import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pexels_client/core/usecases/usecase.dart';
import 'package:pexels_client/features/pexels_video/domain/entities/pexels_video.dart';
import 'package:pexels_client/features/pexels_video/domain/repositories/pexels_video_repository.dart';

import '../../../../core/failures.dart';

class GetPexelsVideo implements UseCase<PexelsVideo, Params> {
  final PexelsVideoRepository repository;

  const GetPexelsVideo(this.repository);

  @override
  Future<Either<Failure, PexelsVideo>> call(Params params) async {
    return await repository.getPexelsVideo(params.id);
  }
}

class Params extends Equatable {
  final String id;

  const Params(this.id);

  @override
  List<Object?> get props => [id];
}
