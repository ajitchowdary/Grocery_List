import 'package:flutter/material.dart';
import '../models/grocery_hierarchy_model.dart';

class GroceryData {
  static List<MainCategory> get categories => [
    MainCategory(
      id: 'packaged_food',
      title: 'Packaged Food',
      emoji: '🍿',
      color: const Color(0xFFFFE4E6),
      subcategories: [
        SubCategory(
          id: 'bakery',
          mainCategoryId: 'packaged_food',
          title: 'Bakery',
          emoji: '🍞',
          products: [
            ProductItem(id: 'pf_b1', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Britannia Fruity Fun 100% Veg Cake', defaultUnit: '60 gms', estimatedPrice: 0.00, emoji: '🍰'),
            ProductItem(id: 'pf_b2', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Britannia Fudge It Chocolate Brownie', defaultUnit: '40 gms', estimatedPrice: 0.00, emoji: '🍫'),
            ProductItem(id: 'pf_b3', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Britannia Gobbles Choco Chill Cake', defaultUnit: '50 gms', estimatedPrice: 0.00, emoji: '🍰'),
            ProductItem(id: 'pf_b4', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Britannia Pineapple Cake', defaultUnit: '50 gms', estimatedPrice: 0.00, emoji: '🍍'),
            ProductItem(id: 'pf_b5', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Britannia Toastea Premium Bake Rusk', defaultUnit: '400 gms / 654 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b6', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Britannia Treat Choco Flavoured Creme Wafer Biscuit', defaultUnit: '55 gms', estimatedPrice: 0.00, emoji: '🍫'),
            ProductItem(id: 'pf_b7', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Britannia Treat Croissant Cocoa Creme Roll', defaultUnit: '45 gms', estimatedPrice: 0.00, emoji: '🥐'),
            ProductItem(id: 'pf_b8', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Britannia Treat Croissant Vanilla Creme Roll', defaultUnit: '45 gms', estimatedPrice: 0.00, emoji: '🥐'),
            ProductItem(id: 'pf_b9', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Britannia Treat Vanilla Creme Wafers', defaultUnit: '55 gms', estimatedPrice: 0.00, emoji: '🧇'),
            ProductItem(id: 'pf_b10', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Cadbury Chocobakes Choc Layered Cakes', defaultUnit: '114 gms', estimatedPrice: 0.00, emoji: '🍰'),
            ProductItem(id: 'pf_b11', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Kwality Brown Bread', defaultUnit: '400 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b12', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Kwality Jeera Butter', defaultUnit: '180 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b13', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Kwality Kreamy Magic Bread Roll', defaultUnit: '60 gms', estimatedPrice: 0.00, emoji: '🥖'),
            ProductItem(id: 'pf_b14', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Kwality Maska Khari', defaultUnit: '180 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b15', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Kwality Special Bread', defaultUnit: '400 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b16', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Modern Hi Fiber Brown Bread', defaultUnit: '400 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b17', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Modern Supreme Sandwich Bread', defaultUnit: '400 gms', estimatedPrice: 0.00, emoji: '🥪'),
            ProductItem(id: 'pf_b18', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Modern Whole Wheat Bread', defaultUnit: '400 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b19', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Parle Happy Happy Tutti Frutty Flavoured Cake', defaultUnit: '100 gms', estimatedPrice: 0.00, emoji: '🍰'),
            ProductItem(id: 'pf_b20', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Parle Happy Happy Vanilla Flavoured Cake', defaultUnit: '100 gms', estimatedPrice: 0.00, emoji: '🍰'),
            ProductItem(id: 'pf_b21', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Parle Real Elaichi Premium Rusk', defaultUnit: '400 gms / 1 kg', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b22', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Parle Tutti Frutty Cakes', defaultUnit: '30 gms', estimatedPrice: 0.00, emoji: '🍰'),
            ProductItem(id: 'pf_b23', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Parle Vanilla Cakes', defaultUnit: '30 gms', estimatedPrice: 0.00, emoji: '🍰'),
            ProductItem(id: 'pf_b24', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: "Ribbons & Balloons Winny Choco Sponge", defaultUnit: '25 gms', estimatedPrice: 0.00, emoji: '🍰'),
            ProductItem(id: 'pf_b25', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Royal Maska Khari', defaultUnit: '200 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b26', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Royal Toast', defaultUnit: '400 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b27', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: "The Baker's Dozen Banana Cake", defaultUnit: '200 gms', estimatedPrice: 0.00, emoji: '🍌'),
            ProductItem(id: 'pf_b28', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: "The Baker's Dozen Banana Walnut Cake", defaultUnit: '150 gms', estimatedPrice: 0.00, emoji: '🍰'),
            ProductItem(id: 'pf_b29', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: "The Baker's Dozen Chocolate Almond Cake", defaultUnit: '150 gms', estimatedPrice: 0.00, emoji: '🍫'),
            ProductItem(id: 'pf_b30', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: "The Baker's Dozen Fresh Orange Cake With Pistachio", defaultUnit: '150 gms', estimatedPrice: 0.00, emoji: '🍊'),
            ProductItem(id: 'pf_b31', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Tosita Baby Rusk Cheddar Cheese', defaultUnit: '150 gms', estimatedPrice: 0.00, emoji: '🧀'),
            ProductItem(id: 'pf_b32', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Tosita Jeera Butter Bites', defaultUnit: '200 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b33', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Tosita Jeera Khari', defaultUnit: '200 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b34', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Tosita Makhaniya Butter', defaultUnit: '200 gms', estimatedPrice: 0.00, emoji: '🧈'),
            ProductItem(id: 'pf_b35', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Tosita Maska Khari', defaultUnit: '150 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b36', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Tosita Milk Rusk', defaultUnit: '200 gms', estimatedPrice: 0.00, emoji: '🍞'),
            ProductItem(id: 'pf_b37', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Tosita Multi Grain Rusk', defaultUnit: '200 gms', estimatedPrice: 0.00, emoji: '🌾'),
            ProductItem(id: 'pf_b38', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Tosita Wheat Khari', defaultUnit: '200 gms', estimatedPrice: 0.00, emoji: '🌾'),
            ProductItem(id: 'pf_b39', mainCategoryId: 'packaged_food', subCategoryId: 'bakery', name: 'Tosita Wheat Rusk', defaultUnit: '200 gms', estimatedPrice: 0.00, emoji: '🌾'),
          ],
        ),
        SubCategory(
          id: 'pf_beverages',
          mainCategoryId: 'packaged_food',
          title: 'Beverages',
          emoji: '☕',
          products: [
            ProductItem(id: 'pf_bev1', mainCategoryId: 'packaged_food', subCategoryId: 'pf_beverages', name: 'Colombian Brew Instant Coffee Wild Vanilla', defaultUnit: '100 gms', estimatedPrice: 0.00, emoji: '☕'),
            ProductItem(id: 'pf_bev2', mainCategoryId: 'packaged_food', subCategoryId: 'pf_beverages', name: 'Colombian Brew Instant Coffee Double Chocolate Mocha', defaultUnit: '100 gms', estimatedPrice: 0.00, emoji: '☕'),
            ProductItem(id: 'pf_bev3', mainCategoryId: 'packaged_food', subCategoryId: 'pf_beverages', name: 'Colombian Brew Instant Coffee Creamy Caramel', defaultUnit: '100 gms', estimatedPrice: 0.00, emoji: '☕'),
            ProductItem(id: 'pf_bev4', mainCategoryId: 'packaged_food', subCategoryId: 'pf_beverages', name: 'Colombian Brew Instant Coffee Nutty Hazelnut', defaultUnit: '100 gms', estimatedPrice: 0.00, emoji: '☕'),
            ProductItem(id: 'pf_bev5', mainCategoryId: 'packaged_food', subCategoryId: 'pf_beverages', name: 'Colombian Brew Instant Coffee Original', defaultUnit: '100 gms', estimatedPrice: 0.00, emoji: '☕'),
            ProductItem(id: 'pf_bev6', mainCategoryId: 'packaged_food', subCategoryId: 'pf_beverages', name: 'Twinings Green Tea & Lemon', defaultUnit: '25 Tea-Bags / 100 Tea-Bags', estimatedPrice: 0.00, emoji: '🍵'),
            ProductItem(id: 'pf_bev7', mainCategoryId: 'packaged_food', subCategoryId: 'pf_beverages', name: 'Twinings Green Tea Lemon & Honey', defaultUnit: '25 Tea-Bags / 100 Tea-Bags', estimatedPrice: 0.00, emoji: '🍵'),
            ProductItem(id: 'pf_bev8', mainCategoryId: 'packaged_food', subCategoryId: 'pf_beverages', name: 'Twinings Origins Darjeeling Tea', defaultUnit: '25 Tea-Bags', estimatedPrice: 0.00, emoji: '🍵'),
            ProductItem(id: 'pf_bev9', mainCategoryId: 'packaged_food', subCategoryId: 'pf_beverages', name: 'Twinings Pure Green Tea', defaultUnit: '100 Tea-Bags', estimatedPrice: 0.00, emoji: '🍵'),
          ],
        ),
        SubCategory(
          id: 'pf_biscuits_choc',
          mainCategoryId: 'packaged_food',
          title: 'Biscuits & Chocolates',
          emoji: '🍫',
          products: [
            ProductItem(id: 'pf_bc1', mainCategoryId: 'packaged_food', subCategoryId: 'pf_biscuits_choc', name: 'Lindt Excellence 85% Cocoa Dark Chocolate', defaultUnit: '100 gms', estimatedPrice: 0.00, emoji: '🍫'),
            ProductItem(id: 'pf_bc2', mainCategoryId: 'packaged_food', subCategoryId: 'pf_biscuits_choc', name: 'Lindt Excellence Intense Orange Dark Chocolate', defaultUnit: '100 gms', estimatedPrice: 0.00, emoji: '🍊'),
            ProductItem(id: 'pf_bc3', mainCategoryId: 'packaged_food', subCategoryId: 'pf_biscuits_choc', name: 'Lindt Milk Ball Lindor', defaultUnit: '200 gms', estimatedPrice: 0.00, emoji: '🍫'),
            ProductItem(id: 'pf_bc4', mainCategoryId: 'packaged_food', subCategoryId: 'pf_biscuits_choc', name: 'Loacker Quadratini Chocolate Wafer Cookies', defaultUnit: '125 gms', estimatedPrice: 0.00, emoji: '🍪'),
            ProductItem(id: 'pf_bc5', mainCategoryId: 'packaged_food', subCategoryId: 'pf_biscuits_choc', name: 'Loacker Quadratini Dark Chocolate Wafer Cookies', defaultUnit: '125 gms', estimatedPrice: 0.00, emoji: '🍪'),
            ProductItem(id: 'pf_bc6', mainCategoryId: 'packaged_food', subCategoryId: 'pf_biscuits_choc', name: 'Loacker Quadratini Napolitaner Wafer Cookies', defaultUnit: '125 gms', estimatedPrice: 0.00, emoji: '🍪'),
            ProductItem(id: 'pf_bc7', mainCategoryId: 'packaged_food', subCategoryId: 'pf_biscuits_choc', name: 'Loacker Quadratini Vanilla Wafer Cookies', defaultUnit: '125 gms', estimatedPrice: 0.00, emoji: '🍪'),
            ProductItem(id: 'pf_bc8', mainCategoryId: 'packaged_food', subCategoryId: 'pf_biscuits_choc', name: 'Lotus Biscoff Biscuit', defaultUnit: '250 gms', estimatedPrice: 0.00, emoji: '🍪'),
          ],
        ),
        SubCategory(
          id: 'biscuits_cookies',
          mainCategoryId: 'packaged_food',
          title: 'Biscuits & Cookies',
          emoji: '🍪',
          products: [
            ProductItem(id: 'pf1', mainCategoryId: 'packaged_food', subCategoryId: 'biscuits_cookies', name: 'Parle-G Gold Biscuits', defaultUnit: '1 kg', estimatedPrice: 120.00, originalPrice: 140.00, emoji: '🍪'),
            ProductItem(id: 'pf2', mainCategoryId: 'packaged_food', subCategoryId: 'biscuits_cookies', name: 'Britannia Good Day Butter', defaultUnit: '600g', estimatedPrice: 145.00, originalPrice: 170.00, emoji: '🍪'),
            ProductItem(id: 'pf2b', mainCategoryId: 'packaged_food', subCategoryId: 'biscuits_cookies', name: 'Oreo Chocolate Cream Biscuits', defaultUnit: '300g', estimatedPrice: 90.00, originalPrice: 110.00, emoji: '🍪'),
            ProductItem(id: 'pf3', mainCategoryId: 'packaged_food', subCategoryId: 'biscuits_cookies', name: 'Sunfeast Dark Fantasy Choco Fills', defaultUnit: '300g', estimatedPrice: 160.00, originalPrice: 190.00, emoji: '🍫'),
            ProductItem(id: 'pf3b', mainCategoryId: 'packaged_food', subCategoryId: 'biscuits_cookies', name: 'Britannia Marie Gold', defaultUnit: '300g', estimatedPrice: 65.00, originalPrice: 80.00, emoji: '🌾'),
          ],
        ),
        SubCategory(
          id: 'snacks_farsans',
          mainCategoryId: 'packaged_food',
          title: 'Snacks & Farsans',
          emoji: '🥨',
          products: [
            ProductItem(id: 'pf4', mainCategoryId: 'packaged_food', subCategoryId: 'snacks_farsans', name: "Haldiram's Aloo Bhujia", defaultUnit: '400g', estimatedPrice: 115.00, originalPrice: 135.00, emoji: '🥨'),
            ProductItem(id: 'pf5', mainCategoryId: 'packaged_food', subCategoryId: 'snacks_farsans', name: "Lay's India's Magic Masala Chips", defaultUnit: '100g', estimatedPrice: 45.00, originalPrice: 50.00, emoji: '🥔'),
            ProductItem(id: 'pf5b', mainCategoryId: 'packaged_food', subCategoryId: 'snacks_farsans', name: 'Kurkure Masala Munch', defaultUnit: '150g', estimatedPrice: 40.00, originalPrice: 45.00, emoji: '🍿'),
          ],
        ),
        SubCategory(
          id: 'chocolates_candies',
          mainCategoryId: 'packaged_food',
          title: 'Chocolates & Candies',
          emoji: '🍫',
          products: [
            ProductItem(id: 'pf7', mainCategoryId: 'packaged_food', subCategoryId: 'chocolates_candies', name: 'Cadbury Dairy Milk Silk', defaultUnit: '150g', estimatedPrice: 150.00, originalPrice: 175.00, emoji: '🍫'),
            ProductItem(id: 'pf7b', mainCategoryId: 'packaged_food', subCategoryId: 'chocolates_candies', name: 'Nestle KitKat 4-Finger', defaultUnit: '4 Pack', estimatedPrice: 110.00, originalPrice: 130.00, emoji: '🍫'),
            ProductItem(id: 'pf8', mainCategoryId: 'packaged_food', subCategoryId: 'chocolates_candies', name: 'Ferrero Rocher T16 Gift Box', defaultUnit: '200g', estimatedPrice: 590.00, originalPrice: 699.00, emoji: '🎁'),
          ],
        ),
        SubCategory(
          id: 'pasta_noodles',
          mainCategoryId: 'packaged_food',
          title: 'Pasta & Noodles',
          emoji: '🍜',
          products: [
            ProductItem(id: 'pf11', mainCategoryId: 'packaged_food', subCategoryId: 'pasta_noodles', name: 'Maggi 2-Minute Masala Noodles', defaultUnit: '12 Pack', estimatedPrice: 168.00, originalPrice: 192.00, emoji: '🍜'),
            ProductItem(id: 'pf11b', mainCategoryId: 'packaged_food', subCategoryId: 'pasta_noodles', name: 'Sunfeast Yippee Noodles', defaultUnit: '4 Pack', estimatedPrice: 58.00, originalPrice: 70.00, emoji: '🍜'),
          ],
        ),
      ],
    ),

    // 02. HOME & KITCHEN (1527 products)
    MainCategory(
      id: 'home_kitchen',
      title: 'Home & Kitchen',
      emoji: '🍳',
      color: const Color(0xFFFEF3C7),
      subcategories: [
        SubCategory(
          id: 'cookware',
          mainCategoryId: 'home_kitchen',
          title: 'Cookware',
          emoji: '🍳',
          products: [
            ProductItem(id: 'hk1', mainCategoryId: 'home_kitchen', subCategoryId: 'cookware', name: 'Prestige Non-stick Fry Pan 24cm', defaultUnit: '1 pc', estimatedPrice: 799.00, originalPrice: 999.00, emoji: '🍳'),
            ProductItem(id: 'hk2', mainCategoryId: 'home_kitchen', subCategoryId: 'cookware', name: 'Hawkins Contura Pressure Cooker 3L', defaultUnit: '1 pc', estimatedPrice: 1290.00, originalPrice: 1550.00, emoji: '🍲'),
          ],
        ),
        SubCategory(
          id: 'storage_containers',
          mainCategoryId: 'home_kitchen',
          title: 'Storage & Containers',
          emoji: '🍱',
          products: [
            ProductItem(id: 'hk3', mainCategoryId: 'home_kitchen', subCategoryId: 'storage_containers', name: 'Signoraware Container Set 6-pack', defaultUnit: '6 Jars', estimatedPrice: 450.00, originalPrice: 550.00, emoji: '🫙'),
            ProductItem(id: 'hk4', mainCategoryId: 'home_kitchen', subCategoryId: 'storage_containers', name: 'Milton Thermosteel Water Bottle 1L', defaultUnit: '1 pc', estimatedPrice: 650.00, originalPrice: 799.00, emoji: '🏺'),
          ],
        ),
      ],
    ),

    // 03. PERSONAL CARE (1458 products)
    MainCategory(
      id: 'personal_care',
      title: 'Personal Care',
      emoji: '🧴',
      color: const Color(0xFFFCE7F3),
      subcategories: [
        SubCategory(
          id: 'soaps_bodywash',
          mainCategoryId: 'personal_care',
          title: 'Soaps & Body Wash',
          emoji: '🧼',
          products: [
            ProductItem(id: 'pc_s1', mainCategoryId: 'personal_care', subCategoryId: 'soaps_bodywash', name: 'Dettol Original Bathing Soap 4-pack', defaultUnit: '4 Bars', estimatedPrice: 160.00, originalPrice: 190.00, emoji: '🧼'),
            ProductItem(id: 'pc_s2', mainCategoryId: 'personal_care', subCategoryId: 'soaps_bodywash', name: 'Dove Cream Beauty Bar 3-pack', defaultUnit: '3 Bars', estimatedPrice: 195.00, originalPrice: 240.00, emoji: '🧼'),
          ],
        ),
        SubCategory(
          id: 'shampoo_conditioner',
          mainCategoryId: 'personal_care',
          title: 'Shampoo & Conditioner',
          emoji: '🧴',
          products: [
            ProductItem(id: 'pc_h1', mainCategoryId: 'personal_care', subCategoryId: 'shampoo_conditioner', name: 'Head & Shoulders Smooth & Silky', defaultUnit: '340ml', estimatedPrice: 260.00, originalPrice: 310.00, emoji: '🧴'),
            ProductItem(id: 'pc_h2', mainCategoryId: 'personal_care', subCategoryId: 'shampoo_conditioner', name: 'Clinic Plus Strong & Long Shampoo', defaultUnit: '650ml', estimatedPrice: 320.00, originalPrice: 390.00, emoji: '🧴'),
          ],
        ),
        SubCategory(
          id: 'oral_care_pc',
          mainCategoryId: 'personal_care',
          title: 'Oral Care',
          emoji: '🪥',
          products: [
            ProductItem(id: 'pc_o1', mainCategoryId: 'personal_care', subCategoryId: 'oral_care_pc', name: 'Colgate Strong Teeth Toothpaste', defaultUnit: '150g', estimatedPrice: 115.00, originalPrice: 135.00, emoji: '🪥'),
            ProductItem(id: 'pc_o2', mainCategoryId: 'personal_care', subCategoryId: 'oral_care_pc', name: 'Sensodyne Repair Toothpaste', defaultUnit: '100g', estimatedPrice: 190.00, originalPrice: 220.00, emoji: '🪥'),
          ],
        ),
      ],
    ),

    // 04. GROCERY (1098 products)
    MainCategory(
      id: 'grocery',
      title: 'Grocery',
      emoji: '🌾',
      color: const Color(0xFFFEF3C7),
      subcategories: [
        SubCategory(
          id: 'cooking_oil',
          mainCategoryId: 'grocery',
          title: 'Cooking Oil',
          emoji: '🛢️',
          products: [
            ProductItem(id: 'g1', mainCategoryId: 'grocery', subCategoryId: 'cooking_oil', name: 'Fortune Refined Sunflower Oil', defaultUnit: '1 Liter', estimatedPrice: 135.00, originalPrice: 160.00, emoji: '🌻'),
            ProductItem(id: 'g2', mainCategoryId: 'grocery', subCategoryId: 'cooking_oil', name: 'Dhara Kachi Ghani Mustard Oil', defaultUnit: '1 Liter', estimatedPrice: 145.00, originalPrice: 170.00, emoji: '🛢️'),
            ProductItem(id: 'g3', mainCategoryId: 'grocery', subCategoryId: 'cooking_oil', name: 'Gemini Pure Groundnut Oil', defaultUnit: '1 Liter', estimatedPrice: 185.00, originalPrice: 215.00, emoji: '🥜'),
            ProductItem(id: 'g4', mainCategoryId: 'grocery', subCategoryId: 'cooking_oil', name: 'Saffola Gold Multisource Oil', defaultUnit: '1 Liter', estimatedPrice: 195.00, originalPrice: 230.00, emoji: '❤️'),
          ],
        ),
        SubCategory(
          id: 'rice',
          mainCategoryId: 'grocery',
          title: 'Rice',
          emoji: '🍚',
          products: [
            ProductItem(id: 'g11', mainCategoryId: 'grocery', subCategoryId: 'rice', name: 'Daawat Rozana Basmati Rice', defaultUnit: '5 kg', estimatedPrice: 380.00, originalPrice: 450.00, emoji: '🍚'),
            ProductItem(id: 'g11b', mainCategoryId: 'grocery', subCategoryId: 'rice', name: 'India Gate Feast Rozana Basmati', defaultUnit: '5 kg', estimatedPrice: 415.00, originalPrice: 490.00, emoji: '🍚'),
            ProductItem(id: 'g12', mainCategoryId: 'grocery', subCategoryId: 'rice', name: 'DMart Premia Sona Masoori Rice', defaultUnit: '5 kg', estimatedPrice: 295.00, originalPrice: 340.00, emoji: '🌾'),
          ],
        ),
        SubCategory(
          id: 'masala_spices',
          mainCategoryId: 'grocery',
          title: 'Masala & Spices',
          emoji: '🌶️',
          products: [
            ProductItem(id: 'ms1', mainCategoryId: 'grocery', subCategoryId: 'masala_spices', name: 'Everest Shahi Biryani Masala', defaultUnit: '100g', estimatedPrice: 82.00, originalPrice: 95.00, emoji: '🍲'),
            ProductItem(id: 'ms5', mainCategoryId: 'grocery', subCategoryId: 'masala_spices', name: 'Everest Garam Masala', defaultUnit: '100g', estimatedPrice: 78.00, originalPrice: 90.00, emoji: '🫚'),
            ProductItem(id: 'ms23', mainCategoryId: 'grocery', subCategoryId: 'masala_spices', name: 'Turmeric (Haldi) - Everest', defaultUnit: '200g', estimatedPrice: 58.00, originalPrice: 68.00, emoji: '🟡'),
            ProductItem(id: 'ms26', mainCategoryId: 'grocery', subCategoryId: 'masala_spices', name: 'Red Chilli (Kashmirilal) - Everest', defaultUnit: '200g', estimatedPrice: 110.00, originalPrice: 130.00, emoji: '🌶️'),
          ],
        ),
        SubCategory(
          id: 'dals',
          mainCategoryId: 'grocery',
          title: 'Dals',
          emoji: '🫘',
          products: [
            ProductItem(id: 'g33', mainCategoryId: 'grocery', subCategoryId: 'dals', name: 'Tata Sampann Unpolished Toor Dal', defaultUnit: '1 kg', estimatedPrice: 155.00, originalPrice: 180.00, emoji: '🟡'),
            ProductItem(id: 'g34', mainCategoryId: 'grocery', subCategoryId: 'dals', name: 'DMart Premia Moong Dal Yellow', defaultUnit: '1 kg', estimatedPrice: 125.00, originalPrice: 145.00, emoji: '🟡'),
          ],
        ),
      ],
    ),

    // 05. DAIRY & BEVERAGES (460 products)
    MainCategory(
      id: 'dairy_beverages',
      title: 'Dairy & Beverages',
      emoji: '🥛',
      color: const Color(0xFFCFFAFE),
      subcategories: [
        SubCategory(
          id: 'dairy',
          mainCategoryId: 'dairy_beverages',
          title: 'Dairy',
          emoji: '🥛',
          products: [
            ProductItem(id: 'db1', mainCategoryId: 'dairy_beverages', subCategoryId: 'dairy', name: 'Amul Taaza Toned Milk', defaultUnit: '1 Liter', estimatedPrice: 54.00, originalPrice: 56.00, emoji: '🥛'),
            ProductItem(id: 'db1b', mainCategoryId: 'dairy_beverages', subCategoryId: 'dairy', name: 'Amul Gold Full Cream Milk', defaultUnit: '1 Liter', estimatedPrice: 66.00, originalPrice: 68.00, emoji: '🥛'),
            ProductItem(id: 'db3', mainCategoryId: 'dairy_beverages', subCategoryId: 'dairy', name: 'Amul Pasteurised Butter', defaultUnit: '200g', estimatedPrice: 108.00, originalPrice: 116.00, emoji: '🧈'),
            ProductItem(id: 'db4', mainCategoryId: 'dairy_beverages', subCategoryId: 'dairy', name: 'Milky Mist Fresh Paneer', defaultUnit: '200g', estimatedPrice: 95.00, originalPrice: 110.00, emoji: '🧀'),
          ],
        ),
        SubCategory(
          id: 'hot_beverages',
          mainCategoryId: 'dairy_beverages',
          title: 'Hot Beverages',
          emoji: '☕',
          products: [
            ProductItem(id: 'db6', mainCategoryId: 'dairy_beverages', subCategoryId: 'hot_beverages', name: 'Brooke Bond Red Label Tea', defaultUnit: '500g', estimatedPrice: 230.00, originalPrice: 270.00, emoji: '🍵'),
            ProductItem(id: 'db7', mainCategoryId: 'dairy_beverages', subCategoryId: 'hot_beverages', name: 'Nescafe Classic Instant Coffee', defaultUnit: '200g', estimatedPrice: 340.00, originalPrice: 395.00, emoji: '☕'),
          ],
        ),
      ],
    ),

    // 06. BEAUTY & COSMETICS (351 products)
    MainCategory(
      id: 'beauty_cosmetics',
      title: 'Beauty & Cosmetics',
      emoji: '💄',
      color: const Color(0xFFFCE7F3),
      subcategories: [
        SubCategory(
          id: 'makeup_beauty',
          mainCategoryId: 'beauty_cosmetics',
          title: 'Makeup & Beauty',
          emoji: '💄',
          products: [
            ProductItem(id: 'bc_m1', mainCategoryId: 'beauty_cosmetics', subCategoryId: 'makeup_beauty', name: 'Maybelline New York Fit Me Foundation', defaultUnit: '30ml', estimatedPrice: 399.00, originalPrice: 549.00, emoji: '💄'),
            ProductItem(id: 'bc_m2', mainCategoryId: 'beauty_cosmetics', subCategoryId: 'makeup_beauty', name: 'Lakme Absolute Skin Natural Mousse', defaultUnit: '25g', estimatedPrice: 650.00, originalPrice: 850.00, emoji: '✨'),
          ],
        ),
        SubCategory(
          id: 'skin_care_bc',
          mainCategoryId: 'beauty_cosmetics',
          title: 'Skin Care',
          emoji: '✨',
          products: [
            ProductItem(id: 'bc_s1', mainCategoryId: 'beauty_cosmetics', subCategoryId: 'skin_care_bc', name: 'Nivea Soft Light Moisturizing Cream', defaultUnit: '200ml', estimatedPrice: 240.00, originalPrice: 299.00, emoji: '🧴'),
            ProductItem(id: 'bc_s2', mainCategoryId: 'beauty_cosmetics', subCategoryId: 'skin_care_bc', name: "Pond's Super Light Gel Oil-Free Moisturiser", defaultUnit: '100g', estimatedPrice: 180.00, originalPrice: 220.00, emoji: '🧴'),
          ],
        ),
      ],
    ),

    // 07. SPECIALS (199 products)
    MainCategory(
      id: 'specials',
      title: 'Specials',
      emoji: '🔥',
      color: const Color(0xFFFEF3C7),
      subcategories: [
        SubCategory(
          id: 'festival_specials',
          mainCategoryId: 'specials',
          title: 'Festival Specials',
          emoji: '🪔',
          products: [
            ProductItem(id: 'sp1', mainCategoryId: 'specials', subCategoryId: 'festival_specials', name: 'DMart Festive Sweets Combo Pack', defaultUnit: '500g', estimatedPrice: 299.00, originalPrice: 399.00, emoji: '🥮'),
            ProductItem(id: 'sp2', mainCategoryId: 'specials', subCategoryId: 'festival_specials', name: 'Dry Fruits Premium Gift Box', defaultUnit: '500g', estimatedPrice: 599.00, originalPrice: 799.00, emoji: '🎁'),
          ],
        ),
      ],
    ),

    // 08. OTHER (198 products)
    MainCategory(
      id: 'other',
      title: 'Other',
      emoji: '📦',
      color: const Color(0xFFF3F4F6),
      subcategories: [
        SubCategory(
          id: 'miscellaneous',
          mainCategoryId: 'other',
          title: 'Miscellaneous',
          emoji: '📦',
          products: [
            ProductItem(id: 'oth1', mainCategoryId: 'other', subCategoryId: 'miscellaneous', name: 'Reusable Canvas Grocery Carry Bag', defaultUnit: '1 pc', estimatedPrice: 45.00, originalPrice: 60.00, emoji: '🛍️'),
            ProductItem(id: 'oth2', mainCategoryId: 'other', subCategoryId: 'miscellaneous', name: 'Stainless Steel Utility Scissors', defaultUnit: '1 pc', estimatedPrice: 85.00, originalPrice: 110.00, emoji: '✂️'),
          ],
        ),
      ],
    ),

    // 09. DMART GROCERY (181 products)
    MainCategory(
      id: 'dmart_grocery_cat',
      title: 'DMart Grocery',
      emoji: '🏪',
      color: const Color(0xFFD1FAE5),
      subcategories: [
        SubCategory(
          id: 'dmart_premia_staples',
          mainCategoryId: 'dmart_grocery_cat',
          title: 'DMart Premia Staples',
          emoji: '🌾',
          products: [
            ProductItem(id: 'dg1', mainCategoryId: 'dmart_grocery_cat', subCategoryId: 'dmart_premia_staples', name: 'DMart Premia Chakki Atta', defaultUnit: '5 kg', estimatedPrice: 215.00, originalPrice: 250.00, emoji: '🌾'),
            ProductItem(id: 'dg2', mainCategoryId: 'dmart_grocery_cat', subCategoryId: 'dmart_premia_staples', name: 'DMart Premia Pure Sugar', defaultUnit: '1 kg', estimatedPrice: 45.00, originalPrice: 52.00, emoji: '🍬'),
            ProductItem(id: 'dg3', mainCategoryId: 'dmart_grocery_cat', subCategoryId: 'dmart_premia_staples', name: 'DMart Premia Iodized Salt', defaultUnit: '1 kg', estimatedPrice: 22.00, originalPrice: 28.00, emoji: '🧂'),
            ProductItem(id: 'dg4', mainCategoryId: 'dmart_grocery_cat', subCategoryId: 'dmart_premia_staples', name: 'DMart Premia Toor Dal', defaultUnit: '1 kg', estimatedPrice: 145.00, originalPrice: 175.00, emoji: '🟡'),
          ],
        ),
      ],
    ),

    // 10. CLOTHING & ACCESSORIES (173 products)
    MainCategory(
      id: 'clothing_accessories',
      title: 'Clothing & Accessories',
      emoji: '👕',
      color: const Color(0xFFEDE9FE),
      subcategories: [
        SubCategory(
          id: 'mens_apparel',
          mainCategoryId: 'clothing_accessories',
          title: "Men's Apparel",
          emoji: '👕',
          products: [
            ProductItem(id: 'ca1', mainCategoryId: 'clothing_accessories', subCategoryId: 'mens_apparel', name: 'Jockey Cotton Round Neck T-Shirt', defaultUnit: '1 pc', estimatedPrice: 349.00, originalPrice: 429.00, emoji: '👕'),
            ProductItem(id: 'ca2', mainCategoryId: 'clothing_accessories', subCategoryId: 'mens_apparel', name: 'Jockey Men Cotton Socks (3-pack)', defaultUnit: '3 Pairs', estimatedPrice: 180.00, originalPrice: 220.00, emoji: '🧦'),
          ],
        ),
        SubCategory(
          id: 'womens_apparel',
          mainCategoryId: 'clothing_accessories',
          title: "Women's Apparel",
          emoji: '👗',
          products: [
            ProductItem(id: 'ca3', mainCategoryId: 'clothing_accessories', subCategoryId: 'womens_apparel', name: 'Cotton Printed Kurti', defaultUnit: '1 pc', estimatedPrice: 499.00, originalPrice: 699.00, emoji: '👗'),
            ProductItem(id: 'ca4', mainCategoryId: 'clothing_accessories', subCategoryId: 'womens_apparel', name: 'Stretchable Cotton Leggings', defaultUnit: '1 pc', estimatedPrice: 299.00, originalPrice: 399.00, emoji: '👗'),
          ],
        ),
      ],
    ),

    // 11. ELECTRONICS & APPLIANCES (172 products)
    MainCategory(
      id: 'electronics_appliances',
      title: 'Electronics & Appliances',
      emoji: '🔌',
      color: const Color(0xFFFEF3C7),
      subcategories: [
        SubCategory(
          id: 'mobile_accessories',
          mainCategoryId: 'electronics_appliances',
          title: 'Mobile Accessories',
          emoji: '📱',
          products: [
            ProductItem(id: 'ea1', mainCategoryId: 'electronics_appliances', subCategoryId: 'mobile_accessories', name: 'Boat Fast Charging Cable Type-C', defaultUnit: '1 pc', estimatedPrice: 249.00, originalPrice: 399.00, emoji: '🔌'),
            ProductItem(id: 'ea2', mainCategoryId: 'electronics_appliances', subCategoryId: 'mobile_accessories', name: 'SanDisk 64GB USB 3.0 Pendrive', defaultUnit: '1 pc', estimatedPrice: 499.00, originalPrice: 650.00, emoji: '💾'),
          ],
        ),
        SubCategory(
          id: 'electrical_home',
          mainCategoryId: 'electronics_appliances',
          title: 'Electricals',
          emoji: '⚡',
          products: [
            ProductItem(id: 'ea3', mainCategoryId: 'electronics_appliances', subCategoryId: 'electrical_home', name: 'Anchor Extension Board 4-socket', defaultUnit: '1 pc', estimatedPrice: 349.00, originalPrice: 450.00, emoji: '🔌'),
            ProductItem(id: 'ea4', mainCategoryId: 'electronics_appliances', subCategoryId: 'electrical_home', name: 'Wipro LED Bulb 9W Cool White (2-pack)', defaultUnit: '2 Pack', estimatedPrice: 180.00, originalPrice: 240.00, emoji: '💡'),
          ],
        ),
      ],
    ),

    // 12. HOME UTILITY & ORGANISERS (166 products)
    MainCategory(
      id: 'home_utility',
      title: 'Home Utility & Organisers',
      emoji: '🧹',
      color: const Color(0xFFE0E7FF),
      subcategories: [
        SubCategory(
          id: 'pooja_needs',
          mainCategoryId: 'home_utility',
          title: 'Pooja Needs',
          emoji: '🪔',
          products: [
            ProductItem(id: 'hu1', mainCategoryId: 'home_utility', subCategoryId: 'pooja_needs', name: 'Cycle Pure Agarbatti', defaultUnit: '250g', estimatedPrice: 95.00, originalPrice: 120.00, emoji: '🪔'),
            ProductItem(id: 'hu2', mainCategoryId: 'home_utility', subCategoryId: 'pooja_needs', name: 'Bhimseni Camphor (Karpur)', defaultUnit: '100g', estimatedPrice: 85.00, originalPrice: 110.00, emoji: '🕯️'),
          ],
        ),
        SubCategory(
          id: 'cleaning_tools',
          mainCategoryId: 'home_utility',
          title: 'Cleaning Tools',
          emoji: '🧹',
          products: [
            ProductItem(id: 'hu3', mainCategoryId: 'home_utility', subCategoryId: 'cleaning_tools', name: 'Gala Spin Mop Set with Bucket', defaultUnit: '1 Set', estimatedPrice: 999.00, originalPrice: 1399.00, emoji: '🪣'),
            ProductItem(id: 'hu4', mainCategoryId: 'home_utility', subCategoryId: 'cleaning_tools', name: 'Gala King Grass Broom', defaultUnit: '1 pc', estimatedPrice: 145.00, originalPrice: 180.00, emoji: '🧹'),
          ],
        ),
      ],
    ),

    // 13. SCHOOL SUPPLIES (164 products)
    MainCategory(
      id: 'school_supplies',
      title: 'School Supplies',
      emoji: '✏️',
      color: const Color(0xFFD1FAE5),
      subcategories: [
        SubCategory(
          id: 'pens_pencils_school',
          mainCategoryId: 'school_supplies',
          title: 'Pens & Pencils',
          emoji: '🖊️',
          products: [
            ProductItem(id: 'ss1', mainCategoryId: 'school_supplies', subCategoryId: 'pens_pencils_school', name: 'Reynolds 045 Ball Pen Blue (5-pack)', defaultUnit: '5 Pens', estimatedPrice: 50.00, originalPrice: 60.00, emoji: '🖊️'),
            ProductItem(id: 'ss2', mainCategoryId: 'school_supplies', subCategoryId: 'pens_pencils_school', name: 'Apsara Platinum Pencils Box', defaultUnit: '1 Box', estimatedPrice: 60.00, originalPrice: 75.00, emoji: '✏️'),
          ],
        ),
        SubCategory(
          id: 'notebooks_stationery',
          mainCategoryId: 'school_supplies',
          title: 'Notebooks',
          emoji: '📓',
          products: [
            ProductItem(id: 'ss3', mainCategoryId: 'school_supplies', subCategoryId: 'notebooks_stationery', name: 'Classmate Single Line Notebook 172pg', defaultUnit: '1 Book', estimatedPrice: 65.00, originalPrice: 80.00, emoji: '📓'),
            ProductItem(id: 'ss4', mainCategoryId: 'school_supplies', subCategoryId: 'notebooks_stationery', name: 'Faber-Castell Oil Pastels 24 Shades', defaultUnit: '1 Box', estimatedPrice: 140.00, originalPrice: 175.00, emoji: '🖍️'),
          ],
        ),
      ],
    ),

    // 14. BED & BATH (120 products)
    MainCategory(
      id: 'bed_bath',
      title: 'Bed & Bath',
      emoji: '🛏️',
      color: const Color(0xFFFEE2E2),
      subcategories: [
        SubCategory(
          id: 'bedsheets',
          mainCategoryId: 'bed_bath',
          title: 'Bedsheets',
          emoji: '🛏️',
          products: [
            ProductItem(id: 'bb1', mainCategoryId: 'bed_bath', subCategoryId: 'bedsheets', name: 'Bombay Dyeing Double Bedsheet Set', defaultUnit: '1 Set', estimatedPrice: 799.00, originalPrice: 1099.00, emoji: '🛏️'),
            ProductItem(id: 'bb2', mainCategoryId: 'bed_bath', subCategoryId: 'bedsheets', name: 'Solimo Cotton Elastic Fitted Sheet', defaultUnit: '1 pc', estimatedPrice: 599.00, originalPrice: 799.00, emoji: '🛏️'),
          ],
        ),
        SubCategory(
          id: 'towels',
          mainCategoryId: 'bed_bath',
          title: 'Towels',
          emoji: '🛀',
          products: [
            ProductItem(id: 'bb3', mainCategoryId: 'bed_bath', subCategoryId: 'towels', name: 'Welspun Cotton Bath Towel', defaultUnit: '1 pc', estimatedPrice: 349.00, originalPrice: 499.00, emoji: '🚿'),
            ProductItem(id: 'bb4', mainCategoryId: 'bed_bath', subCategoryId: 'towels', name: 'Cotton Hand Towels (3-pack)', defaultUnit: '3 Towels', estimatedPrice: 249.00, originalPrice: 349.00, emoji: '🧼'),
          ],
        ),
      ],
    ),

    // 15. SEASONAL & MORE (120 products)
    MainCategory(
      id: 'seasonal_more',
      title: 'Seasonal & More',
      emoji: '🎉',
      color: const Color(0xFFFEF3C7),
      subcategories: [
        SubCategory(
          id: 'monsoon_essentials',
          mainCategoryId: 'seasonal_more',
          title: 'Monsoon Essentials',
          emoji: '☔',
          products: [
            ProductItem(id: 'sm1', mainCategoryId: 'seasonal_more', subCategoryId: 'monsoon_essentials', name: 'Duckback Raincoat with Hood', defaultUnit: '1 pc', estimatedPrice: 499.00, originalPrice: 699.00, emoji: '🌧️'),
            ProductItem(id: 'sm2', mainCategoryId: 'seasonal_more', subCategoryId: 'monsoon_essentials', name: 'Ratan Large Foldable Umbrella', defaultUnit: '1 pc', estimatedPrice: 299.00, originalPrice: 399.00, emoji: '☔'),
          ],
        ),
      ],
    ),

    // 16. APPLIANCES (112 products)
    MainCategory(
      id: 'appliances',
      title: 'Appliances',
      emoji: '📺',
      color: const Color(0xFFCFFAFE),
      subcategories: [
        SubCategory(
          id: 'small_appliances',
          mainCategoryId: 'appliances',
          title: 'Small Home Appliances',
          emoji: '📺',
          products: [
            ProductItem(id: 'app1', mainCategoryId: 'appliances', subCategoryId: 'small_appliances', name: 'Bajaj Dry Steam Iron 1000W', defaultUnit: '1 pc', estimatedPrice: 799.00, originalPrice: 999.00, emoji: '👔'),
            ProductItem(id: 'app2', mainCategoryId: 'appliances', subCategoryId: 'small_appliances', name: 'Prestige Induction Cooktop 2000W', defaultUnit: '1 pc', estimatedPrice: 1999.00, originalPrice: 2499.00, emoji: '🍳'),
          ],
        ),
      ],
    ),

    // 17. BABY CARE (70 products)
    MainCategory(
      id: 'baby_care',
      title: 'Baby Care',
      emoji: '👶',
      color: const Color(0xFFCFFAFE),
      subcategories: [
        SubCategory(
          id: 'diapers_wipes_bc',
          mainCategoryId: 'baby_care',
          title: 'Diapers & Wipes',
          emoji: '👶',
          products: [
            ProductItem(id: 'bc1', mainCategoryId: 'baby_care', subCategoryId: 'diapers_wipes_bc', name: 'Pampers All-in-One Pants Large', defaultUnit: '42 Pack', estimatedPrice: 649.00, originalPrice: 799.00, emoji: '👶'),
            ProductItem(id: 'bc2', mainCategoryId: 'baby_care', subCategoryId: 'diapers_wipes_bc', name: 'Himalaya Baby Wet Wipes 72 sheets', defaultUnit: '1 Pack', estimatedPrice: 120.00, originalPrice: 150.00, emoji: '🧻'),
          ],
        ),
      ],
    ),

    // 18. PERSONAL CARE & BEAUTY (69 products)
    MainCategory(
      id: 'personal_care_beauty',
      title: 'Personal Care & Beauty',
      emoji: '✨',
      color: const Color(0xFFFCE7F3),
      subcategories: [
        SubCategory(
          id: 'fragrances_beauty',
          mainCategoryId: 'personal_care_beauty',
          title: 'Fragrances & Grooming',
          emoji: '💐',
          products: [
            ProductItem(id: 'pcb1', mainCategoryId: 'personal_care_beauty', subCategoryId: 'fragrances_beauty', name: 'Fogg Marco Deodorant Spray', defaultUnit: '150ml', estimatedPrice: 195.00, originalPrice: 250.00, emoji: '✨'),
            ProductItem(id: 'pcb2', mainCategoryId: 'personal_care_beauty', subCategoryId: 'fragrances_beauty', name: 'Gillette Lemon Lime Shaving Foam', defaultUnit: '200g', estimatedPrice: 175.00, originalPrice: 220.00, emoji: '🪒'),
          ],
        ),
      ],
    ),

    // 19. BOOKS (40 products)
    MainCategory(
      id: 'books',
      title: 'Books',
      emoji: '📚',
      color: const Color(0xFFFEF3C7),
      subcategories: [
        SubCategory(
          id: 'general_books',
          mainCategoryId: 'books',
          title: 'Books & Novels',
          emoji: '📖',
          products: [
            ProductItem(id: 'bk1', mainCategoryId: 'books', subCategoryId: 'general_books', name: 'Atomic Habits by James Clear', defaultUnit: '1 Book', estimatedPrice: 399.00, originalPrice: 599.00, emoji: '📚'),
            ProductItem(id: 'bk2', mainCategoryId: 'books', subCategoryId: 'general_books', name: 'The Psychology of Money', defaultUnit: '1 Book', estimatedPrice: 299.00, originalPrice: 399.00, emoji: '📖'),
          ],
        ),
      ],
    ),

    // 20. FRUITS & VEGETABLES (40 products)
    MainCategory(
      id: 'fruits_vegetables',
      title: 'Fruits & Vegetables',
      emoji: '🥬',
      color: const Color(0xFFD1FAE5),
      subcategories: [
        SubCategory(
          id: 'vegetables',
          mainCategoryId: 'fruits_vegetables',
          title: 'Vegetables',
          emoji: '🥦',
          products: [
            ProductItem(id: 'fv_v1',  mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Bitter Gourd (Karela)',                 defaultUnit: '300 gms',                         estimatedPrice: 0.00, emoji: '🥒'),
            ProductItem(id: 'fv_v2',  mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Bottle Gourd (Dudhi)',                  defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🥒'),
            ProductItem(id: 'fv_v3',  mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Broad Beans (Papadi)',                  defaultUnit: '250 gms',                         estimatedPrice: 0.00, emoji: '🫘'),
            ProductItem(id: 'fv_v4',  mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Cabbage (Patta Gobi)',                  defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🥬'),
            ProductItem(id: 'fv_v5',  mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Cauliflower (Ful Gobi)',                defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🥦'),
            ProductItem(id: 'fv_v6',  mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Coconut',                              defaultUnit: '1 Unit',                          estimatedPrice: 0.00, emoji: '🥥'),
            ProductItem(id: 'fv_v7',  mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Drumsticks (Shevgyacha Shenga)',        defaultUnit: '250 gms',                         estimatedPrice: 0.00, emoji: '🌿'),
            ProductItem(id: 'fv_v8',  mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'French Beans (Faliya)',                 defaultUnit: '250 gms',                         estimatedPrice: 0.00, emoji: '🫛'),
            ProductItem(id: 'fv_v9',  mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Baby Corn',                      defaultUnit: '100 gms',                         estimatedPrice: 0.00, emoji: '🌽'),
            ProductItem(id: 'fv_v10', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Baby Potato (Dum Aloo)',          defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🥔'),
            ProductItem(id: 'fv_v11', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Beetroot (Chukandar)',            defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🫀'),
            ProductItem(id: 'fv_v12', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Brinjal (Bharta Baingan)',        defaultUnit: '400 gms',                         estimatedPrice: 0.00, emoji: '🍆'),
            ProductItem(id: 'fv_v13', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Brinjal Round (Kateri Wangi)',    defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🍆'),
            ProductItem(id: 'fv_v14', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Button Mushrooms',               defaultUnit: '200 gms',                         estimatedPrice: 0.00, emoji: '🍄'),
            ProductItem(id: 'fv_v15', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Capsicum Green (Shimla Mirch)',   defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🫑'),
            ProductItem(id: 'fv_v16', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Capsicum Red & Yellow',           defaultUnit: '2 Pieces',                        estimatedPrice: 0.00, emoji: '🫑'),
            ProductItem(id: 'fv_v17', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Cluster Beans (Gavar)',           defaultUnit: '250 gms',                         estimatedPrice: 0.00, emoji: '🫘'),
            ProductItem(id: 'fv_v18', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Colocasia (Arbi)',                defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🥔'),
            ProductItem(id: 'fv_v19', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Coriander (Kothimbir)',           defaultUnit: '100 gms',                         estimatedPrice: 0.00, emoji: '🌿'),
            ProductItem(id: 'fv_v20', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Cucumber White (Safed Kakdi)',    defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🥒'),
            ProductItem(id: 'fv_v21', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Curry Leaves (Kadi Patta)',       defaultUnit: '50 gms',                          estimatedPrice: 0.00, emoji: '🍃'),
            ProductItem(id: 'fv_v22', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Disco Pumpkin (Kaddu/Bhopla)',    defaultUnit: '1 Piece (Approx. 600-700 gm)',    estimatedPrice: 0.00, emoji: '🎃'),
            ProductItem(id: 'fv_v23', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh English Carrot (Gajar)',          defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🥕'),
            ProductItem(id: 'fv_v24', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Green Chilli (Mirchi)',           defaultUnit: '100 gms',                         estimatedPrice: 0.00, emoji: '🌶️'),
            ProductItem(id: 'fv_v25', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Green Cucumber (Kakdi)',          defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🥒'),
            ProductItem(id: 'fv_v26', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Groundnut (Mungfali)',            defaultUnit: '250 gms',                         estimatedPrice: 0.00, emoji: '🥜'),
            ProductItem(id: 'fv_v27', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Ivy Gourd (Tendli)',              defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🥒'),
            ProductItem(id: 'fv_v28', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Lady Finger (Bhindi)',            defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🌿'),
            ProductItem(id: 'fv_v29', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Lemon (Nimboo)',                  defaultUnit: '5 Pieces',                        estimatedPrice: 0.00, emoji: '🍋'),
            ProductItem(id: 'fv_v30', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Onion (Pyaaj)',                   defaultUnit: '1 kg / 3 kgs',                    estimatedPrice: 0.00, emoji: '🧅'),
            ProductItem(id: 'fv_v31', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Potato (Aloo)',                   defaultUnit: '1 kg / 2 kgs',                    estimatedPrice: 0.00, emoji: '🥔'),
            ProductItem(id: 'fv_v32', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Sprouts Mixed Gram',              defaultUnit: '200 gms',                         estimatedPrice: 0.00, emoji: '🌱'),
            ProductItem(id: 'fv_v33', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Sweet Corn',                      defaultUnit: '2 Pieces',                        estimatedPrice: 0.00, emoji: '🌽'),
            ProductItem(id: 'fv_v34', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Fresh Tomato (Tamaatar)',               defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🍅'),
            ProductItem(id: 'fv_v35', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Garlic (Lahsun)',                       defaultUnit: '200 gms',                         estimatedPrice: 0.00, emoji: '🧄'),
            ProductItem(id: 'fv_v36', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Ginger (Adrak)',                        defaultUnit: '200 gms',                         estimatedPrice: 0.00, emoji: '🫚'),
            ProductItem(id: 'fv_v37', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Malgudi Fried Rice/Noodles Mix',        defaultUnit: '250 gms',                         estimatedPrice: 0.00, emoji: '🍜'),
            ProductItem(id: 'fv_v38', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Malgudi Garlic Peeled',                 defaultUnit: '100 gms',                         estimatedPrice: 0.00, emoji: '🧄'),
            ProductItem(id: 'fv_v39', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Sambhar Onion (Madras Onion)',          defaultUnit: '500 gms',                         estimatedPrice: 0.00, emoji: '🧅'),
            ProductItem(id: 'fv_v40', mainCategoryId: 'fruits_vegetables', subCategoryId: 'vegetables', name: 'Tender Coconut',                        defaultUnit: '1 Piece',                         estimatedPrice: 0.00, emoji: '🥥'),
          ],
        ),
      ],
    ),

    // 21. SPORTS & FITNESS (31 products)
    MainCategory(
      id: 'sports_fitness',
      title: 'Sports & Fitness',
      emoji: '⚽',
      color: const Color(0xFFD1FAE5),
      subcategories: [
        SubCategory(
          id: 'indoor_sports',
          mainCategoryId: 'sports_fitness',
          title: 'Indoor Sports',
          emoji: '🏓',
          products: [
            ProductItem(id: 'sf_i1', mainCategoryId: 'sports_fitness', subCategoryId: 'indoor_sports', name: 'Boldfit Plastic Table Tennis Balls (Orange) - Set of 6', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏓'),
            ProductItem(id: 'sf_i2', mainCategoryId: 'sports_fitness', subCategoryId: 'indoor_sports', name: 'Boldfit Plastic Table Tennis Balls - Orange', defaultUnit: 'Set of 3', estimatedPrice: 0.00, emoji: '🏓'),
            ProductItem(id: 'sf_i3', mainCategoryId: 'sports_fitness', subCategoryId: 'indoor_sports', name: 'Table Tennis Racket Set', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏓'),
          ],
        ),
        SubCategory(
          id: 'outdoor_sports',
          mainCategoryId: 'sports_fitness',
          title: 'Outdoor Sports',
          emoji: '🏏',
          products: [
            ProductItem(id: 'sf_o1', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Bokai Badminton Racket Set - 2 Pieces', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏸'),
            ProductItem(id: 'sf_o2', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Boldfit Basket Ball With Free Air Needle (Size 7) - Brown', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏀'),
            ProductItem(id: 'sf_o3', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Boldfit Plastic Cricket Bat - Black & White', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏏'),
            ProductItem(id: 'sf_o4', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Boldfit Plastic Cricket Stumps With Stand & Bails Kit - Red', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏏'),
            ProductItem(id: 'sf_o5', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Boldfit Plastic Cricket Stumps With Stand & Bails Kit - Green', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏏'),
            ProductItem(id: 'sf_o6', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Boldfit Silicone Swimming Head Cap - Black', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏊'),
            ProductItem(id: 'sf_o7', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Boldfit Swimming Goggles 110AF Adjustable Strap With Free Case - Black', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🥽'),
            ProductItem(id: 'sf_o8', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Boldfit Swimming Goggles 330AF Adjustable Strap With Free Case - Black', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🥽'),
            ProductItem(id: 'sf_o9', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Boldfit Swimming Kick Board - Blue Green', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏊'),
            ProductItem(id: 'sf_o10', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Boldfit Tennis Cricket Ball - Light Green', defaultUnit: 'Set Of 6', estimatedPrice: 0.00, emoji: '🎾'),
            ProductItem(id: 'sf_o11', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Boldfit Tennis Cricket Ball - Light Green', defaultUnit: 'Set of 3', estimatedPrice: 0.00, emoji: '🎾'),
            ProductItem(id: 'sf_o12', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM Badminton Kit XR-1000 (1 Pair Racket + 3 Pcs Shuttlecock)', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏸'),
            ProductItem(id: 'sf_o13', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM Badminton Racket UNO-777', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏸'),
            ProductItem(id: 'sf_o14', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM Basket Ball (Size 3) - Orange', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏀'),
            ProductItem(id: 'sf_o15', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM Basket Ball (Size 5) - Orange', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏀'),
            ProductItem(id: 'sf_o16', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM Batworks Polymer Cricket Bat (Size 5) - Fluorescent Yellow', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏏'),
            ProductItem(id: 'sf_o17', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM Cric Freak Polymer Cricket Bat (Size 3) - Blue', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏏'),
            ProductItem(id: 'sf_o18', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM Cricket Tennis Ball With Can - Pack of 3', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🎾'),
            ProductItem(id: 'sf_o19', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM Foremost Polymer Cricket Bat (Size 8) - Fluorescent Yellow', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏏'),
            ProductItem(id: 'sf_o20', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM Kickaro Football (Size 3) - Multicolour', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '⚽'),
            ProductItem(id: 'sf_o21', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM Kidzy Football (Size 3) - Blue', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '⚽'),
            ProductItem(id: 'sf_o22', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM PVC Cricket Ball - Red', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏏'),
            ProductItem(id: 'sf_o23', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM PVC Cricket Stump Set MCC - Yellow', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏏'),
            ProductItem(id: 'sf_o24', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'BSM Speed Volant Nylon Shuttlecock - Pack of 6', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏸'),
            ProductItem(id: 'sf_o25', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'DSports Basketball - Assorted (Size 3)', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏀'),
            ProductItem(id: 'sf_o26', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'DSports Basketball - Orange (Size 7)', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏀'),
            ProductItem(id: 'sf_o27', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Nimi Cricket Bat & Ball For Kids (Size-1)', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏏'),
            ProductItem(id: 'sf_o28', mainCategoryId: 'sports_fitness', subCategoryId: 'outdoor_sports', name: 'Nimi Cricket Set For Kids (Size-2)', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🏏'),
          ],
        ),
      ],
    ),


    // 22. FOOTWEAR (31 products)
    MainCategory(
      id: 'footwear',
      title: 'Footwear',
      emoji: '👟',
      color: const Color(0xFFFEF3C7),
      subcategories: [
        SubCategory(
          id: 'mens_footwear',
          mainCategoryId: 'footwear',
          title: "Men's Footwear",
          emoji: '👞',
          products: [
            ProductItem(id: 'fw_m1', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Bata Alex Remo Lace-Up Men's Shoes AW22 - Black", defaultUnit: 'Size 7 / Size 8', estimatedPrice: 0.00, emoji: '👞'),
            ProductItem(id: 'fw_m2', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Bata Alex Remo Slip-On Men's Shoes AW22 - Black", defaultUnit: 'Size 7 / Size 8 / Size 9 / Size 10', estimatedPrice: 0.00, emoji: '👞'),
            ProductItem(id: 'fw_m3', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Bata Fortuner Men's Sandal M8S - Red", defaultUnit: 'Size 7 / Size 8 / Size 9', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m4', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Bata Fortuner Men's Sandal M8S - Yellow", defaultUnit: 'Size 7 / Size 8 / Size 9', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m5', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Concord Men's Casual Shoes - Grey Blue", defaultUnit: 'Size 8 / Size 9', estimatedPrice: 0.00, emoji: '👟'),
            ProductItem(id: 'fw_m6', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Concord Men's Casual Shoes - Navy Red", defaultUnit: 'Size 8 / Size 9', estimatedPrice: 0.00, emoji: '👟'),
            ProductItem(id: 'fw_m7', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Paragon Men's Chappal 6201 - Brown", defaultUnit: 'Size 7 / Size 8 / Size 9', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m8', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Paragon Men's Chappal 6225 - Tan Brown", defaultUnit: 'Size 7 / Size 8 / Size 9', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m9', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Paragon Men's Chappal 6250 - Brown", defaultUnit: 'Size 7 / Size 8 / Size 9', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m10', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Paragon Men's Chappal 6830 - Brown", defaultUnit: 'Size 7 / Size 8 / Size 9 / Size 10', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m11', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Paragon Men's Chappal 6901 - Brown", defaultUnit: 'Size 7 / Size 8 / Size 9 / Size 10', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m12', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Paragon Stimulus Men's Sandal - Black & Olive Green", defaultUnit: 'Size 7 / Size 8 / Size 9 / Size 10', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m13', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Relaxo Flite Men's Chappal PUG125 - Black", defaultUnit: 'Size 7 / Size 8 / Size 9 / Size 10', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m14', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Relaxo Flite Men's Chappal PUG125 - Brown", defaultUnit: 'Size 9 / Size 10', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m15', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Relaxo Flite Men's Chappal PUG91 - Black", defaultUnit: 'Size 9 / Size 10', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m16', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Relaxo Flite Men's Chappal PUG91 - Brown", defaultUnit: 'Size 8 / Size 9 / Size 10', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m17', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Relaxo Flite Men's Sandal PUG20 - Black", defaultUnit: 'Size 10', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_m18', mainCategoryId: 'footwear', subCategoryId: 'mens_footwear', name: "Relaxo Sparx Men's Sandle SS563 - Camel", defaultUnit: 'Size 7 / Size 8 / Size 9', estimatedPrice: 0.00, emoji: '🩴'),
          ],
        ),
        SubCategory(
          id: 'shoe_care',
          mainCategoryId: 'footwear',
          title: 'Shoe Care',
          emoji: '🪄',
          products: [
            ProductItem(id: 'fw_sc1', mainCategoryId: 'footwear', subCategoryId: 'shoe_care', name: 'Cherry Black Blossom Polish', defaultUnit: '40 gms', estimatedPrice: 0.00, emoji: '🪄'),
            ProductItem(id: 'fw_sc2', mainCategoryId: 'footwear', subCategoryId: 'shoe_care', name: 'Cherry Blossom Black Handy Shoe Shine', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '✨'),
            ProductItem(id: 'fw_sc3', mainCategoryId: 'footwear', subCategoryId: 'shoe_care', name: 'Cherry Blossom Liquid Shoe Polish - Black', defaultUnit: '75 ml', estimatedPrice: 0.00, emoji: '🖤'),
            ProductItem(id: 'fw_sc4', mainCategoryId: 'footwear', subCategoryId: 'shoe_care', name: 'Cherry Blossom Sports Shoe Cleaner', defaultUnit: '75 ml', estimatedPrice: 0.00, emoji: '🧴'),
            ProductItem(id: 'fw_sc5', mainCategoryId: 'footwear', subCategoryId: 'shoe_care', name: 'Cherry Dark Tan Blossom Shoe Polish', defaultUnit: '40 gms', estimatedPrice: 0.00, emoji: '🪄'),
            ProductItem(id: 'fw_sc6', mainCategoryId: 'footwear', subCategoryId: 'shoe_care', name: 'Cherry Neutral Handy Shoe Shine', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '✨'),
            ProductItem(id: 'fw_sc7', mainCategoryId: 'footwear', subCategoryId: 'shoe_care', name: 'Kiwi Express Sponge All Colours', defaultUnit: '5 ml', estimatedPrice: 0.00, emoji: '🧽'),
            ProductItem(id: 'fw_sc8', mainCategoryId: 'footwear', subCategoryId: 'shoe_care', name: 'Kiwi Instant Polish - Black Shine & Protect', defaultUnit: '75 ml', estimatedPrice: 0.00, emoji: '🖤'),
            ProductItem(id: 'fw_sc9', mainCategoryId: 'footwear', subCategoryId: 'shoe_care', name: 'Kiwi Leather Shoe Shine Brush', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🪥'),
            ProductItem(id: 'fw_sc10', mainCategoryId: 'footwear', subCategoryId: 'shoe_care', name: 'Kiwi Shoe Brush 2 In 1', defaultUnit: '1 Unit', estimatedPrice: 0.00, emoji: '🪥'),
            ProductItem(id: 'fw_sc11', mainCategoryId: 'footwear', subCategoryId: 'shoe_care', name: 'Kiwi Shoe Polish - Black', defaultUnit: '40 gms', estimatedPrice: 0.00, emoji: '🖤'),
          ],
        ),
        SubCategory(
          id: 'womens_footwear',
          mainCategoryId: 'footwear',
          title: "Women's Footwear",
          emoji: '👠',
          products: [
            ProductItem(id: 'fw_w1', mainCategoryId: 'footwear', subCategoryId: 'womens_footwear', name: "Relaxo Flite Women's Chappal PUL117 - Beige", defaultUnit: 'Size 4 / Size 5 / Size 6', estimatedPrice: 0.00, emoji: '🩴'),
            ProductItem(id: 'fw_w2', mainCategoryId: 'footwear', subCategoryId: 'womens_footwear', name: "Relaxo Flite Women's Chappal PUL117 - Maroon", defaultUnit: 'Size 4 / Size 5 / Size 6 / Size 7', estimatedPrice: 0.00, emoji: '🩴'),
          ],
        ),
      ],
    ),

    // 23. BABY & KIDS
    MainCategory(
      id: 'baby_kids',
      title: 'Baby & Kids',
      emoji: '🧸',
      color: const Color(0xFFCFFAFE),
      subcategories: [
        SubCategory(
          id: 'baby_food',
          mainCategoryId: 'baby_kids',
          title: 'Baby Food',
          emoji: '🍼',
          products: [
            ProductItem(id: 'bk_f1', mainCategoryId: 'baby_kids', subCategoryId: 'baby_food', name: 'Nestle Ceregrow Milk & Fruits', defaultUnit: '300 gms', estimatedPrice: 0.00, emoji: '🍼'),
            ProductItem(id: 'bk_f2', mainCategoryId: 'baby_kids', subCategoryId: 'baby_food', name: 'Nestle Cerelac Multigrain Dal Veg', defaultUnit: '300 gms', estimatedPrice: 0.00, emoji: '🥣'),
            ProductItem(id: 'bk_f3', mainCategoryId: 'baby_kids', subCategoryId: 'baby_food', name: 'Nestle Cerelac Wheat Apple Cherry', defaultUnit: '300 gms', estimatedPrice: 0.00, emoji: '🍎'),
          ],
        ),
      ],
    ),
  ];
}
