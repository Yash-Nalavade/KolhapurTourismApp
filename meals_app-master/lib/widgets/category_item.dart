import 'package:flutter/material.dart';

import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String id;

  const CategoryItem(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.id});

  void _selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed(CategoryMealsScreen.ScreenRoute, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(title, style: Theme.of(context).textTheme.headline6),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [
                    0.0,
                    0.5,
                    1.0,
                  ],
                  colors: [
                    Colors.black.withOpacity(0.2),
                    Colors.black45.withOpacity(0.5),
                    Colors.black.withOpacity(0.2),
                  ]),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ],
      ),
    );
  }
}
