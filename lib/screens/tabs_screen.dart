import 'package:appreceitas/components/main_drawer.dart';
import 'package:appreceitas/models/meal.dart';
import 'package:appreceitas/screens/categories_screens.dart';
import 'package:appreceitas/screens/favorite_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  const TabsScreen({super.key, required this.favoriteMeals});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selcetScreenIndex = 0;
  late List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      {
        'title': 'Lista de Categorias',
        'screen': const CategoriesScreens(),
      },
      {
        'title': 'Meus Favoritos',
        'screen': FavoriteScreen(
          favorteMeals: widget.favoriteMeals,
        )
      },
    ];
  }

  _selcetScreen(int index) {
    setState(() {
      _selcetScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screens[_selcetScreenIndex]['title'] as String,
        ),
      ),
      drawer: const MainDrawer(),
      body: _screens[_selcetScreenIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selcetScreen,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selcetScreenIndex,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.star),
            label: 'Favoritos',
          )
        ],
      ),
    );
  }
}
