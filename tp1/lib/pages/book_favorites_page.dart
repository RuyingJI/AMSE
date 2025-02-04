import 'package:flutter/material.dart';
import '../data/media_data.dart';
import '../models/media.dart';

class BookFavoritesPage extends StatelessWidget {
  const BookFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 筛选出被标记为收藏的书籍
    List<Media> favoriteBooks = books.where((book) => book.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Books"),
      ),
      body: favoriteBooks.isEmpty
          ? const Center(
              child: Text(
                "No favorite books yet!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView(
              children: favoriteBooks.map((book) {
                return Card(
                  child: ListTile(
                    leading: Image.network(
                      book.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(book.title),
                    subtitle: Text(book.description),
                  ),
                );
              }).toList(),
            ),
    );
  }
}
