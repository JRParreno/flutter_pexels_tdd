import 'package:equatable/equatable.dart';

class PexelsVideoUser extends Equatable {
  final String id;
  final String name;
  final String url;

  const PexelsVideoUser({
    required this.id,
    required this.name,
    required this.url,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        url,
      ];
}
