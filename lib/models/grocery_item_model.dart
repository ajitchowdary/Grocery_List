class GroceryItemModel {
  final String id;
  final String name;
  final String categoryId;
  final String unit;
  final double price;
  final double? originalPrice;
  final double rating;
  final String emoji;
  final String discountTag;
  final bool isOrganic;
  int quantityInCart;

  GroceryItemModel({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.unit,
    required this.price,
    this.originalPrice,
    required this.rating,
    required this.emoji,
    this.discountTag = '',
    this.isOrganic = false,
    this.quantityInCart = 0,
  });

  static List<GroceryItemModel> get sampleItems => [
    GroceryItemModel(
      id: 'p1',
      name: 'Organic Avocados',
      categoryId: 'veg',
      unit: '3 pcs (approx. 500g)',
      price: 3.99,
      originalPrice: 4.99,
      rating: 4.9,
      emoji: '🥑',
      discountTag: '20% OFF',
      isOrganic: true,
    ),
    GroceryItemModel(
      id: 'p2',
      name: 'Fresh Strawberries',
      categoryId: 'fruit',
      unit: '1 Pack (250g)',
      price: 2.49,
      originalPrice: 3.29,
      rating: 4.8,
      emoji: '🍓',
      discountTag: 'HOT DEAL',
      isOrganic: true,
    ),
    GroceryItemModel(
      id: 'p3',
      name: 'Farm Whole Milk',
      categoryId: 'dairy',
      unit: '1 Liter',
      price: 1.89,
      rating: 4.7,
      emoji: '🥛',
    ),
    GroceryItemModel(
      id: 'p4',
      name: 'Artisanal Sourdough',
      categoryId: 'bakery',
      unit: '1 Loaf (400g)',
      price: 3.49,
      originalPrice: 4.00,
      rating: 4.9,
      emoji: '🍞',
      discountTag: 'FRESH BAKE',
    ),
    GroceryItemModel(
      id: 'p5',
      name: 'Crisp Red Apples',
      categoryId: 'fruit',
      unit: '1 kg',
      price: 2.99,
      originalPrice: 3.50,
      rating: 4.6,
      emoji: '🍎',
    ),
    GroceryItemModel(
      id: 'p6',
      name: 'Fresh Broccoli Crown',
      categoryId: 'veg',
      unit: '500g',
      price: 1.49,
      rating: 4.8,
      emoji: '🥦',
      isOrganic: true,
    ),
    GroceryItemModel(
      id: 'p7',
      name: 'Cold Pressed Orange Juice',
      categoryId: 'drinks',
      unit: '500 ml',
      price: 2.99,
      originalPrice: 3.99,
      rating: 4.9,
      emoji: '🍊',
      discountTag: '100% PURE',
    ),
    GroceryItemModel(
      id: 'p8',
      name: 'Organic Brown Eggs',
      categoryId: 'dairy',
      unit: '12 Large Eggs',
      price: 3.79,
      rating: 4.9,
      emoji: '🥚',
      isOrganic: true,
    ),
  ];
}
