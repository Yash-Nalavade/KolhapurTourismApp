import 'package:flutter/material.dart';

import '../models/dummy_data.dart';
import '../models/meal.dart';
import '../widgets/main_drawer.dart';
import '../widgets/meal_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const ScreenRoute = '/search';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Meal> searchTitle = DUMMY_MEALS;
  List<Meal> searchIngredients = DUMMY_MEALS;
  String? type;
  bool _searchBoolean = false;

  var _searchController = TextEditingController();

  void _searchByTitle(String text) {
    return setState(() {
      searchTitle = DUMMY_MEALS
          .where(
              (meal) => meal.title.toLowerCase().contains(text.toLowerCase()))
          .toList();
    });
  }

  void _searchbyIngredients(String text) {
    return setState(() {
      searchIngredients = DUMMY_MEALS.where((meal) {
        for (var i = 0; i < meal.details.length; i++) {
          if (meal.details[i].toLowerCase().contains(text.toLowerCase())) {
            return true;
          }
        }
        return false;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _searchBoolean
            ? AppBar(
                title: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: TextField(
                      controller: _searchController,
                      autofocus: true,
                      onChanged: (String text) {
                        if (_searchController.text.isNotEmpty) {
                          _searchByTitle(text.toLowerCase());
                          _searchbyIngredients(text.toLowerCase());
                        }
                        if (_searchController.text.isEmpty) {
                          setState(() {
                            searchTitle = DUMMY_MEALS;
                            searchIngredients = DUMMY_MEALS;
                          });
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              setState(() {
                                _searchBoolean = false;
                              });
                            },
                          ),
                          hintText: 'Search...',
                          border: InputBorder.none),
                    ),
                  ),
                ),
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(
                      text: 'Search by name',
                    ),
                    Tab(
                      text: 'Search by ingredients',
                    ),
                  ],
                ),
              )
            : AppBar(
                title: const Text('Search for a place'),
                actions: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _searchBoolean = true;
                        });
                      },
                      icon: const Icon(Icons.search))
                ],
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(
                      text: 'Search by name',
                    ),
                   /* Tab(
                      text: 'Apurva',
                    ), */
                  ],
                ),
              ),
        drawer: MainDrawer(),
        body: TabBarView(
          children: <Widget>[
            SearchResult(searchMeals: searchTitle),
            SearchResult(searchMeals: searchIngredients),
          ],
        ),
      ),
    );
  }
}

class SearchResult extends StatelessWidget {
  final List<Meal> searchMeals;

  const SearchResult({super.key, required this.searchMeals});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: searchMeals.length > 0
          ? ListView.builder(
              itemCount: searchMeals.length,
              itemBuilder: (BuildContext context, int index) {
                return MealItem(
                  title: searchMeals[index].title,
                  imageUrl: searchMeals[index].imageUrl,
                  duration: searchMeals[index].duration,
                  complexity: searchMeals[index].complexity,
                  affordability: searchMeals[index].affordability,
                  id: searchMeals[index].id,
                );
              },
            )
          : Center(child: Text('Nothing found!')),
    );
  }
}
