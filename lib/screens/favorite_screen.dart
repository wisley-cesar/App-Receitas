import 'package:appreceitas/components/meal_item.dart';
import 'package:appreceitas/models/meal.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favorteMeals;
  const FavoriteScreen({super.key, required this.favorteMeals});

  @override
  Widget build(BuildContext context) {
    if (favorteMeals.isEmpty) {
      return const Center(
        child: Text('Nenhuma refeição foi marcada como favorita'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(meal: favorteMeals[index]);
        },
        itemCount: favorteMeals.length,
      );
    }
  }
}
