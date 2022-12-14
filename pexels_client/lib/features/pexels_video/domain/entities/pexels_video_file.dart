import 'package:equatable/equatable.dart';

class PexelsVideoFile extends Equatable {
  final String id;
  final String quality;
  final String fileType;
  final int? width;
  final int? height;
  final String link;

  const PexelsVideoFile({
    required this.id,
    required this.quality,
    required this.fileType,
    required this.link,
    this.width,
    this.height,
  });

  @override
  List<Object?> get props => [
        id,
        quality,
        fileType,
        width,
        height,
        link,
      ];
}
