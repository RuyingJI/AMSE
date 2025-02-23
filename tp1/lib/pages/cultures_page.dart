import 'package:flutter/material.dart';
import '../data/cultures_data.dart'; // 引入文化数据
import '../models/media.dart';

class CulturesPage extends StatefulWidget {
  const CulturesPage({super.key});

  @override
  State<CulturesPage> createState() => _CulturesPageState();
}

class _CulturesPageState extends State<CulturesPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Culture Chinoise"),
      ),
      body: ListView(
        children: cultures.map((culture) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  culture.imageUrl,
                  width: double.infinity, // 让图片宽度适应屏幕
                  height: 300, // 设置固定高度
                  fit: BoxFit.cover,
                ),
                ListTile(
                  title: Text(culture.title),
                  subtitle: Text(culture.description),
                  trailing: IconButton(
                    icon: Icon(
                      culture.isLiked ? Icons.favorite : Icons.favorite_border,
                      color: culture.isLiked ? Colors.red : null,
                    ),
                    onPressed: () => toggleLike(culture),
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
