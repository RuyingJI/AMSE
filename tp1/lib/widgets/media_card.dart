import 'package:flutter/material.dart';
import '../models/media.dart';

class MediaCard extends StatelessWidget {
  final Media media;
  final Function(Media) onLike;

  const MediaCard({super.key, required this.media, required this.onLike});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          media.imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Icon(Icons.image_not_supported, size: 50);
          },
        ),
        title: Text(media.title),
        subtitle: Text(media.description),
        trailing: IconButton(
          icon: Icon(media.isLiked ? Icons.favorite : Icons.favorite_border),
          color: media.isLiked ? Colors.red : null,
          onPressed: () => onLike(media),
        ),
      ),
    );
  }
}
