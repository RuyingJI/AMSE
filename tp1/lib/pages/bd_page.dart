import 'package:flutter/material.dart';
import '../data/media_data.dart';
import '../models/media.dart';

class BDPage extends StatefulWidget {
  const BDPage({super.key});

  @override
  State<BDPage> createState() => _BDPageState();
}

class _BDPageState extends State<BDPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BDs"),
      ),
      body: ListView(
        children: bds.map((bd) {
          return Card(
            child: ListTile(
              leading: Image.network(bd.imageUrl,
                  width: 50, height: 50, fit: BoxFit.cover),
              title: Text(bd.title),
              subtitle: Text(bd.description),
              trailing: IconButton(
                icon: Icon(
                  bd.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: bd.isLiked ? Colors.red : null,
                ),
                onPressed: () => toggleLike(bd), // 调用 toggleLike 更新状态
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
