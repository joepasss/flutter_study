import 'package:flutter/material.dart';

class FoodCategory {
  final String id;
  final String title;
  final Color color;

  const FoodCategory({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
