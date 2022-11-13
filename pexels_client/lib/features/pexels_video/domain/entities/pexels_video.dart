import 'package:equatable/equatable.dart';

import 'pexels_video_file.dart';
import 'pexels_video_picture.dart';
import 'pexels_video_user.dart';

class PexelsVideo extends Equatable {
  final String id;
  final int width;
  final int height;
  final String url;
  final String image;
  final int duration;
  final PexelsVideoUser user;
  final List<PexelsVideoFile> videoFiles;
  final List<PexelsVideoPicture> videoPictures;

  const PexelsVideo({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
    required this.image,
    required this.duration,
    required this.user,
    required this.videoFiles,
    required this.videoPictures,
  });

  @override
  List<Object?> get props => [
        id,
        width,
        height,
        url,
        image,
        duration,
        user,
        videoFiles,
        videoPictures,
      ];
}
