import 'package:delimeals/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:delimeals/models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  FavoritesScreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Container(
        child: Center(
          child: Text('You have no favorites yet! start adding them.'),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            imageUrl: favoriteMeals[index].imageUrl,
            complexity: favoriteMeals[index].complexity,
            duration: favoriteMeals[index].duration,
            title: favoriteMeals[index].title,
            affordability: favoriteMeals[index].affordability,
          );
        },
        itemCount: favoriteMeals!.length,
      );
    }
  }
}
