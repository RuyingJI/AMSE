import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/media.dart';
import 'pages/favorites.dart';
import 'pages/about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Guide de Voyage en Chine'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // 当前选中的页面索引

  static final List<Widget> _pages = <Widget>[
    HomePage(), // 主页
    MediaPage(), // 媒体页
    FavoritesPage(), // 收藏页
    AboutPage(), // 关于页
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _pages[_selectedIndex], // 动态加载选中的页面
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Catégories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "À propos"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red.shade300,
        unselectedItemColor: Colors.red.shade300,
        onTap: _onItemTapped,
      ),
    );
  }
}
