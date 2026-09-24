import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../models/grocery_hierarchy_model.dart';

class DmartCatalogLoader {
  static List<MainCategory>? _cachedCategories;

  static final Map<String, String> _categoryEmojis = {
    'Packaged Food': '🍿',
    'Home & Kitchen': '🍳',
    'Personal Care': '🧴',
    'Grocery': '🌾',
    'Dairy & Beverages': '🥛',
    'Beauty & Cosmetics': '💄',
    'Specials': '🔥',
    'Other': '📦',
    'DMart Grocery': '🏪',
    'Clothing & Accessories': '👕',
    'Electronics & Appliances': '🔌',
    'Home Utility & Organisers': '🧹',
    'School Supplies': '✏️',
    'Bed & Bath': '🛏️',
    'Seasonal & More': '🎉',
    'Appliances': '📺',
    'Baby Care': '👶',
    'Personal Care & Beauty': '✨',
    'Books': '📚',
    'Fruits & Vegetables': '🥬',
    'Sports & Fitness': '⚽',
    'Footwear': '👟',
    'Baby & Kids': '🧸',
  };

  static Future<List<MainCategory>> loadCatalog() async {
    if (_cachedCategories != null && _cachedCategories!.isNotEmpty) {
      return _cachedCategories!;
    }

    try {
      String? htmlContent;

      // 1. Try reading directly from Desktop path & sync to assets
      final desktopFile = File(r'C:\Users\ajit.chowdary\Desktop\dmart_categories_products.html');
      final assetFile = File(r'C:\Users\ajit.chowdary\Desktop\Grocery_List\assets\dmart_categories_products.html');

      if (await desktopFile.exists()) {
        htmlContent = await desktopFile.readAsString();
        try {
          if (!await assetFile.exists() || (await assetFile.length()) < 10000) {
            await assetFile.parent.create(recursive: true);
            await desktopFile.copy(assetFile.path);
            debugPrint('Successfully synced 2.9MB DMart catalog HTML to assets folder!');
          }
        } catch (e) {
          debugPrint('Sync warning: $e');
        }
      }

      // 2. Fallback to app assets folder
      if (htmlContent == null || htmlContent.isEmpty) {
        htmlContent = await rootBundle.loadString('assets/dmart_categories_products.html');
      }

      _cachedCategories = parseHtml(htmlContent);
      debugPrint('Loaded DMart Catalog: ${_cachedCategories?.length} main categories');
      return _cachedCategories!;
    } catch (e) {
      debugPrint('Error loading DMart HTML catalog: $e');
      return [];
    }
  }

  static List<MainCategory> parseHtml(String html) {
    final List<MainCategory> categories = [];

    // Split by category sections
    final rawSections = html.split('<section class="category-section" id="');

    int mainCatIdx = 1;
    for (int i = 1; i < rawSections.length; i++) {
      final secChunk = rawSections[i];
      final catIdEnd = secChunk.indexOf('"');
      if (catIdEnd == -1) continue;

      final catId = secChunk.substring(0, catIdEnd);
      final secBody = secChunk.substring(catIdEnd + 1);

      // Extract Title
      final h2Start = secBody.indexOf('<h2>');
      final h2End = secBody.indexOf('</h2>');
      String catTitle = 'Category $mainCatIdx';
      if (h2Start != -1 && h2End != -1 && h2End > h2Start) {
        catTitle = secBody.substring(h2Start + 4, h2End).trim();
      }
      final catEmoji = _categoryEmojis[catTitle] ?? '🛒';

      // Split subcategories
      final subChunks = secBody.split('<div class="subcategory">');
      final List<SubCategory> subcategories = [];
      int subIdx = 1;

      for (int s = 1; s < subChunks.length; s++) {
        final subBody = subChunks[s];

        final h3Start = subBody.indexOf('<h3>');
        final h3End = subBody.indexOf('</h3>');
        if (h3Start == -1 || h3End == -1) continue;

        final rawSubTitle = subBody.substring(h3Start + 4, h3End).trim();
        final subTitle = rawSubTitle.split('<').first.split('(').first.trim();
        final subId = '${catId}_s$subIdx';

        // Extract products
        final prodChunks = subBody.split('<li class="product-item">');
        final List<ProductItem> products = [];
        int prodIdx = 1;

        for (int p = 1; p < prodChunks.length; p++) {
          final pBody = prodChunks[p];

          // Name
          final nameStart = pBody.indexOf('<div class="name">');
          final nameEnd = pBody.indexOf('</div>', nameStart == -1 ? 0 : nameStart);
          String pName = 'Product';
          if (nameStart != -1 && nameEnd != -1 && nameEnd > nameStart) {
            pName = pBody.substring(nameStart + 18, nameEnd).trim();
          }

          // SKU / Unit
          final skuStart = pBody.indexOf('<span class="sku">');
          final skuEnd = pBody.indexOf('</span>', skuStart == -1 ? 0 : skuStart);
          String unit = '1 pc';
          if (skuStart != -1 && skuEnd != -1 && skuEnd > skuStart) {
            final txt = pBody.substring(skuStart + 18, skuEnd).trim();
            if (txt.contains(':')) {
              unit = txt.split(':').last.trim();
            } else if (txt.contains('-')) {
              unit = txt.split('-').last.trim();
            } else {
              unit = txt;
            }
          }

          final hashVal = (pName.hashCode + catId.hashCode).abs() % 220 + 35;
          final estPrice = hashVal.toDouble();
          final origPrice = (estPrice * 1.25).roundToDouble();

          products.add(
            ProductItem(
              id: 'p_${catId}_${subIdx}_$prodIdx',
              mainCategoryId: catId,
              subCategoryId: subId,
              name: pName,
              defaultUnit: unit,
              estimatedPrice: estPrice,
              originalPrice: origPrice,
              emoji: catEmoji,
            ),
          );
          prodIdx++;
        }

        if (products.isNotEmpty) {
          subcategories.add(
            SubCategory(
              id: subId,
              mainCategoryId: catId,
              title: subTitle,
              emoji: '📦',
              products: products,
            ),
          );
        }
        subIdx++;
      }

      if (subcategories.isNotEmpty) {
        categories.add(
          MainCategory(
            id: catId,
            title: catTitle,
            emoji: catEmoji,
            color: const Color(0xFFFEF3C7),
            subcategories: subcategories,
          ),
        );
      }
      mainCatIdx++;
    }

    return categories;
  }
}
