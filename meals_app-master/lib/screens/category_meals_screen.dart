// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../models/meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const ScreenRoute = '/category-meals';

  final List<Meal> availableMeals;

  const CategoryMealsScreen({required this.availableMeals});

  @override
  Widget build(BuildContext context) {
    final _routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final String? categoryId = _routeArgs['id'];
    final String? categoyTitle = _routeArgs['title'];
    final displayMeals = availableMeals
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(categoyTitle!),
      ),
      body: ListView.builder(
        itemCount: displayMeals.length,
        itemBuilder: (BuildContext context, int index) {
          return MealItem(
            title: displayMeals[index].title,
            imageUrl: displayMeals[index].imageUrl,
            duration: displayMeals[index].duration,
            complexity: displayMeals[index].complexity,
            affordability: displayMeals[index].affordability,
            id: displayMeals[index].id,
          );
        },
      ),
    );
  }
}
