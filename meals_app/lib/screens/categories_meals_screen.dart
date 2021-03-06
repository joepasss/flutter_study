import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({Key? key}) : super(key: key);

  static const String routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final String categoryTitle = routeArgs['title'].toString();
    final String categoryId = routeArgs['id'].toString();
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: categoryMeals.length,
        itemBuilder: (BuildContext context, int index) {
          final meals = categoryMeals[index];

          return MealItem(
            id: meals.id,
            title: meals.title,
            imageUrl: meals.imageUrl,
            duration: meals.duration,
            complexity: meals.complexity,
            affordability: meals.affordability,
          );
        },
      ),
    );
  }
}
