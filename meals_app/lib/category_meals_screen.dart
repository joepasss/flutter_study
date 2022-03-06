import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Recipes'),
      ),
      body: const Center(
        child: Text('The Recipes For The Category!'),
      ),
    );
  }
}
