class Media {
  final String title;
  final String description;
  final String imageUrl;
  bool isLiked;

  Media({
    required this.title,
    required this.description,
    required this.imageUrl,
    this.isLiked = false,
  });
}
