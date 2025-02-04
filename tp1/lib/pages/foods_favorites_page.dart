import 'package:flutter/material.dart';
import '../data/foods_data.dart';
import '../models/media.dart';

class FoodsFavoritesPage extends StatelessWidget {
  const FoodsFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Media> favoriteFoods = foods.where((food) => food.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Plats Favoris"),
      ),
      body: favoriteFoods.isEmpty
          ? const Center(
              child: Text(
                "Aucun plat ajouté aux favoris.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: favoriteFoods.length,
              itemBuilder: (context, index) {
                final food = favoriteFoods[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: Image.network(
                      food.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(food.title),
                    subtitle: Text(food.description),
                  ),
                );
              },
            ),
    );
  }
}
