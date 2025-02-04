import 'package:flutter/material.dart';
import 'film_favorites_page.dart';
import 'bd_favorites_page.dart';
import 'book_favorites_page.dart';
import 'series_favorites_page.dart';
import 'sports_favorites_page.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Films
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FilmFavoritesPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Icon(Icons.movie, size: 40, color: Colors.deepPurple),
                  const SizedBox(width: 16),
                  const Text(
                    "Favorite Films",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward, color: Colors.deepPurple),
                ],
              ),
            ),
          ),

          // BDs
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BDFavoritesPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Icon(Icons.book, size: 40, color: Colors.blue),
                  const SizedBox(width: 16),
                  const Text(
                    "Favorite BDs",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward, color: Colors.blue),
                ],
              ),
            ),
          ),

          // Books
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BookFavoritesPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Icon(Icons.menu_book, size: 40, color: Colors.green),
                  const SizedBox(width: 16),
                  const Text(
                    "Favorite Books",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward, color: Colors.green),
                ],
              ),
            ),
          ),

          // Series
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SeriesFavoritesPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Icon(Icons.tv, size: 40, color: Colors.orange),
                  const SizedBox(width: 16),
                  const Text(
                    "Favorite Series",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward, color: Colors.orange),
                ],
              ),
            ),
          ),

          // Sports
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SportsFavoritesPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Icon(Icons.sports, size: 40, color: Colors.red),
                  const SizedBox(width: 16),
                  const Text(
                    "Favorite Sports",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward, color: Colors.red),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
