import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../models/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: DUMMY_CATEGORIES
            .map(
              (cat) => CategoryItem(
                id: cat.id,
                title: cat.title,
                imageUrl: cat.imageUrl,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 5 / 4,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        ),
      ),
    );
  }
}
