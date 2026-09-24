import 'package:flutter/material.dart';
import '../models/grocery_hierarchy_model.dart';

class GroceryListManager extends ChangeNotifier {
  final Map<String, ShoppingListItem> _shoppingList = {};

  List<ShoppingListItem> get allItems => _shoppingList.values.toList();

  int get totalItemCount {
    return _shoppingList.values.fold(0, (sum, item) => sum + item.quantity);
  }

  int get checkedItemCount {
    return _shoppingList.values.where((item) => item.isChecked).fold(0, (sum, item) => sum + item.quantity);
  }

  double get totalEstimatedCost {
    return _shoppingList.values.fold(
      0.0,
      (sum, item) => sum + (item.product.estimatedPrice * item.quantity),
    );
  }

  int getQuantity(String productId) {
    return _shoppingList[productId]?.quantity ?? 0;
  }

  bool isAdded(String productId) {
    return _shoppingList.containsKey(productId);
  }

  void addItem(ProductItem product, String mainCategoryTitle, String subCategoryTitle) {
    if (_shoppingList.containsKey(product.id)) {
      _shoppingList[product.id]!.quantity += 1;
    } else {
      _shoppingList[product.id] = ShoppingListItem(
        product: product,
        mainCategoryTitle: mainCategoryTitle,
        subCategoryTitle: subCategoryTitle,
        quantity: 1,
      );
    }
    notifyListeners();
  }

  void addCustomItem({
    required String name,
    required String mainCategoryTitle,
    required String subCategoryTitle,
    required String unit,
    required double estimatedPrice,
    double? originalPrice,
    String emoji = '🏷️',
    int quantity = 1,
  }) {
    final customId = 'custom_${DateTime.now().millisecondsSinceEpoch}';
    final customProduct = ProductItem(
      id: customId,
      mainCategoryId: 'custom',
      subCategoryId: 'custom',
      name: name,
      defaultUnit: unit.isNotEmpty ? unit : '1 pc',
      estimatedPrice: estimatedPrice,
      originalPrice: originalPrice,
      emoji: emoji,
    );

    _shoppingList[customId] = ShoppingListItem(
      product: customProduct,
      mainCategoryTitle: mainCategoryTitle.isNotEmpty ? mainCategoryTitle : 'CUSTOM ITEMS',
      subCategoryTitle: subCategoryTitle.isNotEmpty ? subCategoryTitle : 'My Custom Additions',
      quantity: quantity > 0 ? quantity : 1,
    );
    notifyListeners();
  }

  void updateQuantity(String productId, int delta) {
    if (!_shoppingList.containsKey(productId)) return;

    final currentQty = _shoppingList[productId]!.quantity;
    final newQty = currentQty + delta;

    if (newQty <= 0) {
      _shoppingList.remove(productId);
    } else {
      _shoppingList[productId]!.quantity = newQty;
    }
    notifyListeners();
  }

  void toggleChecked(String productId) {
    if (_shoppingList.containsKey(productId)) {
      _shoppingList[productId]!.isChecked = !_shoppingList[productId]!.isChecked;
      notifyListeners();
    }
  }

  void removeItem(String productId) {
    _shoppingList.remove(productId);
    notifyListeners();
  }

  void clearList() {
    _shoppingList.clear();
    notifyListeners();
  }

  void clearChecked() {
    _shoppingList.removeWhere((key, item) => item.isChecked);
    notifyListeners();
  }

  // Helper method to group items by Category -> Subcategory
  Map<String, Map<String, List<ShoppingListItem>>> get groupedItems {
    final Map<String, Map<String, List<ShoppingListItem>>> grouped = {};

    for (var item in _shoppingList.values) {
      final mainCat = item.mainCategoryTitle;
      final subCat = item.subCategoryTitle;

      if (!grouped.containsKey(mainCat)) {
        grouped[mainCat] = {};
      }
      if (!grouped[mainCat]!.containsKey(subCat)) {
        grouped[mainCat]![subCat] = [];
      }

      grouped[mainCat]![subCat]!.add(item);
    }

    return grouped;
  }
}
