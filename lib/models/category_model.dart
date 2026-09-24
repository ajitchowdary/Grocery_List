import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String title;
  final String emoji;
  final int itemCount;
  final Color bgColor;

  CategoryModel({
    required this.id,
    required this.title,
    required this.emoji,
    required this.itemCount,
    required this.bgColor,
  });

  static List<CategoryModel> get sampleCategories => [
    CategoryModel(
      id: 'all',
      title: 'All Items',
      emoji: '🛒',
      itemCount: 120,
      bgColor: const Color(0xFFE0E7FF),
    ),
    CategoryModel(
      id: 'veg',
      title: 'Vegetables',
      emoji: '🥦',
      itemCount: 45,
      bgColor: const Color(0xFFD1FAE5),
    ),
    CategoryModel(
      id: 'fruit',
      title: 'Fresh Fruits',
      emoji: '🍎',
      itemCount: 32,
      bgColor: const Color(0xFFFEE2E2),
    ),
    CategoryModel(
      id: 'dairy',
      title: 'Dairy & Eggs',
      emoji: '🥛',
      itemCount: 18,
      bgColor: const Color(0xFFFEF3C7),
    ),
    CategoryModel(
      id: 'bakery',
      title: 'Bakery',
      emoji: '🍞',
      itemCount: 15,
      bgColor: const Color(0xFFFFE4E6),
    ),
    CategoryModel(
      id: 'drinks',
      title: 'Beverages',
      emoji: '🧃',
      itemCount: 24,
      bgColor: const Color(0xFFCFFAFE),
    ),
  ];
}
