import 'package:flutter/material.dart';

class MainCategory {
  final String id;
  final String title;
  final String emoji;
  final Color color;
  final List<SubCategory> subcategories;

  MainCategory({
    required this.id,
    required this.title,
    required this.emoji,
    required this.color,
    required this.subcategories,
  });
}

class SubCategory {
  final String id;
  final String mainCategoryId;
  final String title;
  final String emoji;
  final List<ProductItem> products;

  SubCategory({
    required this.id,
    required this.mainCategoryId,
    required this.title,
    required this.emoji,
    required this.products,
  });
}

class ProductItem {
  final String id;
  final String subCategoryId;
  final String mainCategoryId;
  final String name;
  final String defaultUnit;
  final double estimatedPrice;
  final double? originalPrice; // Original MRP
  final String emoji;

  ProductItem({
    required this.id,
    required this.subCategoryId,
    required this.mainCategoryId,
    required this.name,
    required this.defaultUnit,
    required this.estimatedPrice,
    this.originalPrice,
    required this.emoji,
  });

  double get mrp {
    if (originalPrice != null && originalPrice! > estimatedPrice) {
      return originalPrice!;
    }
    // Calculate realistic DMart MRP (~20% higher than DMart discounted price)
    final calculated = (estimatedPrice * 1.22).roundToDouble();
    return calculated > estimatedPrice ? calculated : (estimatedPrice + 10);
  }

  int get discountPercentage {
    if (mrp <= estimatedPrice) return 0;
    return (((mrp - estimatedPrice) / mrp) * 100).round();
  }
}

class ShoppingListItem {
  final ProductItem product;
  final String mainCategoryTitle;
  final String subCategoryTitle;
  int quantity;
  bool isChecked;

  ShoppingListItem({
    required this.product,
    required this.mainCategoryTitle,
    required this.subCategoryTitle,
    this.quantity = 1,
    this.isChecked = false,
  });
}
