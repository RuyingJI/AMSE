import 'media.dart';

class Film extends Media {
  final String director;

  Film({
    required this.director,
    super.title = "Unknown Title",
    super.description = "No description available",
    super.imageUrl = "https://default-image.com/default.jpg",
    super.isLiked = false,
  });
}

/*class Film extends Media {
  final String director;

  Film({
    required this.director,
    required super.title,
    required super.description,
    required super.imageUrl,
    super.isLiked = false,
  });
}*/
