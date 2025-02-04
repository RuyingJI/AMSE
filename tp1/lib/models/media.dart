class Media {
  final String title;
  final String description;
  final String imageUrl;
  final String? actors; // 可选字段，仅在需要时使用
  bool isLiked;

  Media({
    required this.title,
    required this.description,
    required this.imageUrl,
    this.isLiked = false,
    this.actors, // 默认为 null
  });
}
