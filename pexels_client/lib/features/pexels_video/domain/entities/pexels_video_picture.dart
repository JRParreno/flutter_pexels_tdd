import 'package:equatable/equatable.dart';

class PexelsVideoPicture extends Equatable {
  final String id;
  final String picture;
  final int nr;

  const PexelsVideoPicture({
    required this.id,
    required this.picture,
    required this.nr,
  });

  @override
  List<Object?> get props => [
        id,
        picture,
        nr,
      ];
}
