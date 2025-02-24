import 'package:flutter/material.dart';
import '../data/foods_data.dart';
import '../models/media.dart';

class FoodsFavoritesPage extends StatefulWidget {
  const FoodsFavoritesPage({super.key});

  @override
  State<FoodsFavoritesPage> createState() => _FoodsFavoritesPageState();
}

class _FoodsFavoritesPageState extends State<FoodsFavoritesPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Media> favoriteFoods =
        foods.where((food) => food.isLiked).toList(); // 获取喜欢的食物

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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 显示本地图片，调整大小
                      Image.asset(
                        food.imageUrl,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      ListTile(
                        title: Text(food.title),
                        subtitle: Text(food.description),
                        trailing: IconButton(
                          icon: Icon(
                            food.isLiked
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: food.isLiked ? Colors.red : null,
                          ),
                          onPressed: () {
                            toggleLike(food); // 取消收藏
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
