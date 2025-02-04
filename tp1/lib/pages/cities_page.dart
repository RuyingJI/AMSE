import 'package:flutter/material.dart';
import '../data/cities_data.dart';
import '../models/media.dart';

class CitiesPage extends StatefulWidget {
  const CitiesPage({super.key});

  @override
  State<CitiesPage> createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  void toggleLike(Media media) {
    setState(() {
      media.isLiked = !media.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Villes célèbres"),
      ),
      body: ListView(
        children: cities.map((city) {
          return Card(
            child: ListTile(
              leading: Image.network(
                city.imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(city.title),
              subtitle: Text(city.description),
              trailing: IconButton(
                icon: Icon(
                  city.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: city.isLiked ? Colors.red : null,
                ),
                onPressed: () => toggleLike(city),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
