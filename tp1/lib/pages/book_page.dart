import 'package:flutter/material.dart';
import '../data/media_data.dart';
import '../models/media.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Books"),
      ),
      body: ListView(
        children: books.map((book) {
          return Card(
            child: ListTile(
              leading: Image.network(book.imageUrl,
                  width: 50, height: 50, fit: BoxFit.cover),
              title: Text(book.title),
              subtitle: Text(book.description),
              trailing: IconButton(
                icon: Icon(
                  book.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: book.isLiked ? Colors.red : null,
                ),
                onPressed: () => toggleLike(
                    book), // Appelle toggleLike pour mettre à jour l'état
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
