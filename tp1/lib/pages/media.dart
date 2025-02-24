import 'package:flutter/material.dart';
import 'package:tp1/pages/cities_page.dart';
import 'package:tp1/pages/foods_page.dart';
import 'package:tp1/pages/cultures_page.dart';
//import 'package:tp1/pages/series_page.dart';
import 'package:tp1/pages/sports_page.dart';
import 'package:tp1/pages/film_page.dart';

class MediaPage extends StatelessWidget {
  const MediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catégories de Tourisme en Chine"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //  Films Chinois
            _buildCategoryCard(
              context,
              title: "Films Chinois",
              icon: Icons.movie,
              color: Colors.deepPurple.shade100,
              destination: const FilmPage(),
            ),

            //  Villes Célèbres
            _buildCategoryCard(
              context,
              title: "Villes célèbres",
              icon: Icons.location_city,
              color: Colors.blue.shade100,
              destination: const CitiesPage(),
            ),

            //  Cuisine Chinoise
            _buildCategoryCard(
              context,
              title: "Cuisine Chinoise",
              icon: Icons.restaurant,
              color: Colors.orange.shade100,
              destination: const FoodsPage(),
            ),

            //  Culture Chinoise
            _buildCategoryCard(
              context,
              title: "Culture Chinoise",
              icon: Icons.language,
              color: Colors.purple.shade100,
              destination: const CulturesPage(),
            ),

            /*   //  Séries Chinoises
            _buildCategoryCard(
              context,
              title: "Séries Chinoises",
              icon: Icons.tv,
              color: Colors.green.shade100,
              destination: const SeriesPage(),
            ),
*/
            //  Sports Traditionnels
            _buildCategoryCard(
              context,
              title: "Sports Traditionnels",
              icon: Icons.sports,
              color: Colors.red.shade100,
              destination: const SportsPage(),
            ),
          ],
        ),
      ),
    );
  }

  //  Fonction pour générer les cartes de catégories
  Widget _buildCategoryCard(BuildContext context,
      {required String title,
      required IconData icon,
      required Color color,
      required Widget destination}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  destination,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
          );
        },
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 1,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(icon, size: 40, color: Colors.black54),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward, color: Colors.black54),
            ],
          ),
        ),
      ),
    );
  }
}
