import 'package:flutter/material.dart';
import '../data/foods_data.dart'; // 引入美食数据
import '../models/media.dart';

class FoodsPage extends StatefulWidget {
  const FoodsPage({super.key});

  @override
  State<FoodsPage> createState() => _FoodsPageState();
}

class _FoodsPageState extends State<FoodsPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cuisine Chinoise"),
      ),
      body: ListView(
        children: foods.map((food) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  food.imageUrl,
                  width: double.infinity, // 让图片宽度适应屏幕
                  height: 500, // 设置固定高度
                  fit: BoxFit.cover,
                ),
                ListTile(
                  title: Text(food.title),
                  subtitle: Text(food.description),
                  trailing: IconButton(
                    icon: Icon(
                      food.isLiked ? Icons.favorite : Icons.favorite_border,
                      color: food.isLiked ? Colors.red : null,
                    ),
                    onPressed: () => toggleLike(food),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
