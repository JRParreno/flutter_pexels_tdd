import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pexels_client/core/failures.dart';
import 'package:pexels_client/core/usecases/usecase.dart';
import 'package:pexels_client/features/pexels_photo/domain/entities/pexels_photo.dart';
import 'package:pexels_client/features/pexels_photo/domain/repositories/pexels_photo_repository.dart';

class GetPexelsPhoto implements UseCase<PexelsPhoto, Params> {
  final PexelsPhotoRepository repository;

  const GetPexelsPhoto(this.repository);

  // Dart Callable classes
  @override
  Future<Either<Failure, PexelsPhoto>> call(Params params) async {
    return await repository.getPexelsPhoto(id: params.id);
  }
}

class Params extends Equatable {
  final String id;

  // Make named arguments if two arguments needed
  const Params({
    required this.id,
  });

  @override
  List<Object?> get props => [id];
}
