import 'media.dart';

class BD extends Media {
  final String author;

  BD({
    required this.author,
    super.title = "Titre inconnu",
    super.description = "Aucune description disponible",
    super.imageUrl = "https://default-image.com/default.jpg",
    super.isLiked = false,
  });
}

/*
class BD extends Media {
  final String author;

  BD({
    required this.author,
    required super.title,
    required super.description,
    required super.imageUrl,
    super.isLiked = false,
  });
}
*/
