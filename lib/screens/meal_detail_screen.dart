import 'package:appreceitas/models/meal.dart';
import 'package:flutter/material.dart';

class MealDatailScreen extends StatelessWidget {
  final Function(Meal) onToggleFavorite;
  final bool Function(Meal) isFavoreteMeal;
  const MealDatailScreen({
    super.key,
    required this.onToggleFavorite,
    required this.isFavoreteMeal,
  });

  Widget _createSelectionTitle(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget _createSelectionContainer(Widget child) {
    return Container(
        width: 300,
        height: 220,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            _createSelectionTitle(context, 'Ingredientes'),
            _createSelectionContainer(
              ListView.builder(
                itemCount: meal.ingredients.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Text(meal.ingredients[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
            _createSelectionTitle(context, 'Passos'),
            _createSelectionContainer(
              ListView.builder(
                itemCount: meal.steps.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Text('${index + 1}'),
                        ),
                        title: Text(meal.steps[index]),
                      ),
                      const Divider(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onToggleFavorite(meal),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: Icon(isFavoreteMeal(meal) ? Icons.star : Icons.star_border),
      ),
    );
  }
}
