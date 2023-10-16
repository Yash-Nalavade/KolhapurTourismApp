import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  const FavoritesScreen(this.favoriteMeals);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return widget.favoriteMeals.isEmpty
        ? Center(
            child: Text(
              'You have no favorites yet\n Try to add some meals now!',
              textAlign: TextAlign.center,
            ),
          )
        : ListView.builder(
            itemCount: widget.favoriteMeals.length,
            itemBuilder: (BuildContext context, int index) {
              return MealItem(
                title: widget.favoriteMeals[index].title,
                imageUrl: widget.favoriteMeals[index].imageUrl,
                duration: widget.favoriteMeals[index].duration,
                complexity: widget.favoriteMeals[index].complexity,
                affordability: widget.favoriteMeals[index].affordability,
                id: widget.favoriteMeals[index].id,
              );
            },
          );
  }
}
