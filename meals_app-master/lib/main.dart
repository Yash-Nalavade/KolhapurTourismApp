// ignore_for_file: deprecated_member_use, unused_field, unused_element

import 'package:flutter/material.dart';
import './models/dummy_data.dart';
import './screens/filters_screen.dart';
import './screens/meal_details_screen.dart';
import './screens/search_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/bottom_tabs_screen.dart';
import './models/meal.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };
  List<Meal> _availableMeals = DUMMY_MEALS;
  List<Meal> _favoriteMeals = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableMeals = DUMMY_MEALS.where((meal) {
        if (_filters['gluten'] == true && !meal.isGlutenFree) {
          return false;
        }
        if (_filters['lactose'] == true && !meal.isLactoseFree) {
          return false;
        }
        if (_filters['vegan'] == true && !meal.isVegan) {
          return false;
        }
        if (_filters['vegetarian'] == true && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String mealId) {
    final _existingIndex =
        _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if (_existingIndex >= 0) {
      setState(() {
        _favoriteMeals.removeAt(_existingIndex);
      });
    } else {
      setState(() {
        _favoriteMeals.add(DUMMY_MEALS.firstWhere((meal) => meal.id == mealId));
      });
    }
  }

  bool _isMealFavorite(String mealId) {
    return _favoriteMeals.any((meal) => meal.id == mealId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber[200],
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      ),
      home: BottomTabScreen(_favoriteMeals),
      routes: {
        CategoryMealsScreen.ScreenRoute: (context) =>
            CategoryMealsScreen(availableMeals: _availableMeals),
        BottomTabScreen.ScreenRoute: (context) =>
            BottomTabScreen(_favoriteMeals),
        FiltersScreen.ScreenRoute: (context) =>
            FiltersScreen(saveFilters: _setFilters, currentFilters: _filters),
        MealDetailsScreen.ScreenRoute: (context) => MealDetailsScreen(
            toggleFavorite: _toggleFavorite, isFavorite: _isMealFavorite),
        SearchScreen.ScreenRoute: (context) => SearchScreen(),
      },


    );
  }
}
