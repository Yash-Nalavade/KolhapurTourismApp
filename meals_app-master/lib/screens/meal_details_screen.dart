import 'package:flutter/material.dart';

import '../models/dummy_data.dart';
import '../models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  static const ScreenRoute = '/meal_details';

  final Function toggleFavorite;
  final Function isFavorite;

  MealDetailsScreen({required this.toggleFavorite, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final Meal selectedMeal =
        DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            _buildTitleSection(context: context, title: 'Details'),
            _buildContainer(
              context,
              ListView.builder(
                itemCount: selectedMeal.details.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.8),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(selectedMeal.details[index]),
                    ),
                  );
                },
              ),
            ),
            /*
            _buildTitleSection(context: context, title: 'Steps'),
            _buildContainer(
              context,
              ListView.builder(
                itemCount: selectedMeal.steps.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.6),
                          child: Text(
                            '#${index + 1}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        title: Text(selectedMeal.steps[index]),
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 20)*/
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor.withBlue(800),
        onPressed: () {
          toggleFavorite(mealId);

          ;
        },
        child: isFavorite(mealId)
            ? Icon(
                Icons.favorite,
                color: Theme.of(context).colorScheme.secondary,
                size: 30,
              )
            : Icon(
                Icons.favorite_border,
                color: Theme.of(context).colorScheme.secondary,
                size: 30,
              ),
      ),
    );
  }

  Widget _buildContainer(BuildContext context, Widget child) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            width: 1,
            color: Theme.of(context).primaryColor.withOpacity(0.2),
          ),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.8,
      child: child,
    );
  }

  Container _buildTitleSection(
      {required BuildContext context, required String title}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: Colors.black),
      ),
    );
  }
}











            // Divider(
            //   indent: 80,
            //   endIndent: 80,
            //   thickness: 0.2,
            //   color: Theme.of(context).primaryColor,
            // ),