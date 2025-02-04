import 'package:flutter/material.dart';
import 'package:tp1/pages/bd_page.dart';
import 'package:tp1/pages/film_page.dart';
import 'package:tp1/pages/book_page.dart';
import 'package:tp1/pages/series_page.dart';
import 'package:tp1/pages/sports_page.dart';

class MediaPage extends StatelessWidget {
  const MediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Categories"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Film 跳转链接
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FilmPage()),
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
                    "Films",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward, color: Colors.deepPurple),
                ],
              ),
            ),
          ),

          // BD 跳转链接
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BDPage()),
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
                    "BDs",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward, color: Colors.blue),
                ],
              ),
            ),
          ),

          // Book 跳转链接
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BookPage()),
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
                  const Icon(Icons.menu_book, size: 40, color: Colors.orange),
                  const SizedBox(width: 16),
                  const Text(
                    "Books",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward, color: Colors.orange),
                ],
              ),
            ),
          ),

          // Series 跳转链接
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SeriesPage()),
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
                  const Icon(Icons.tv, size: 40, color: Colors.green),
                  const SizedBox(width: 16),
                  const Text(
                    "Series",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward, color: Colors.green),
                ],
              ),
            ),
          ),

          // Sports 跳转链接
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SportsPage()),
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
                    "Sports",
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
