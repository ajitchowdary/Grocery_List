import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../core/constants/app_colors.dart';
import '../core/widgets/ios_liquid_glass_container.dart';
import '../core/widgets/add_custom_item_sheet.dart';
import '../models/grocery_hierarchy_model.dart';
import '../providers/grocery_list_manager.dart';
import 'items_list_screen.dart';

class ProductsListScreen extends StatelessWidget {
  final MainCategory mainCategory;
  final SubCategory subCategory;
  final GroceryListManager listManager;

  const ProductsListScreen({
    Key? key,
    required this.mainCategory,
    required this.subCategory,
    required this.listManager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: listManager,
      builder: (context, _) {
        return Scaffold(
          backgroundColor: AppColors.background,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(CupertinoIcons.back, color: AppColors.darkText, size: 22),
              onPressed: () => Navigator.pop(context),
            ),
            title: Row(
              children: [
                Text(subCategory.emoji, style: const TextStyle(fontSize: 22)),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    subCategory.title,
                    style: const TextStyle(
                      color: AppColors.darkText,
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // iOS Breadcrumb Tag
                    IosLiquidGlassContainer(
                      blurSigma: 12,
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(mainCategory.emoji, style: const TextStyle(fontSize: 14)),
                          const SizedBox(width: 6),
                          Text(
                            '${mainCategory.title}  ❯  ${subCategory.title}',
                            style: const TextStyle(
                              color: AppColors.primaryDark,
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),

                    // Products list with iOS Liquid Glass Cards
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: subCategory.products.length + 1,
                        itemBuilder: (context, index) {
                          if (index == subCategory.products.length) {
                            return GestureDetector(
                              onTap: () {
                                AddCustomItemSheet.show(
                                  context,
                                  listManager: listManager,
                                  initialCategory: mainCategory.title,
                                  initialSubCategory: subCategory.title,
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 6, bottom: 20),
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: AppColors.primary.withOpacity(0.08),
                                  borderRadius: BorderRadius.circular(22),
                                  border: Border.all(color: AppColors.primary.withOpacity(0.3), width: 1.5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(CupertinoIcons.add_circled_solid, color: AppColors.primaryDark, size: 20),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Add Custom Item to ${subCategory.title}',
                                      style: const TextStyle(
                                        fontSize: 13.5,
                                        fontWeight: FontWeight.w900,
                                        color: AppColors.primaryDark,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                          final product = subCategory.products[index];
                          final qtyInList = listManager.getQuantity(product.id);

                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: IosLiquidGlassContainer(
                              blurSigma: 16,
                              color: Colors.white.withOpacity(0.85),
                              borderColor: qtyInList > 0 ? AppColors.primary : Colors.white.withOpacity(0.85),
                              borderWidth: qtyInList > 0 ? 2 : 1.5,
                              borderRadius: BorderRadius.circular(22),
                              padding: const EdgeInsets.all(14),
                              child: Row(
                                children: [
                                  // Product Emoji Box
                                  IosLiquidGlassContainer(
                                    blurSigma: 8,
                                    color: AppColors.primaryLight.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(16),
                                    padding: EdgeInsets.zero,
                                    child: SizedBox(
                                      width: 54,
                                      height: 54,
                                      child: Center(
                                        child: Text(product.emoji, style: const TextStyle(fontSize: 28)),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),

                                  // Product Name, Unit, Price & Original MRP
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          product.name,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 14.5,
                                            color: AppColors.darkText,
                                            height: 1.2,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Wrap(
                                          crossAxisAlignment: WrapCrossAlignment.center,
                                          spacing: 6,
                                          runSpacing: 4,
                                          children: [
                                            // Discounted DMart Price
                                            Text(
                                              '₹${product.estimatedPrice.toStringAsFixed(2)}',
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900,
                                                color: AppColors.primaryDark,
                                              ),
                                            ),

                                            // Original Price (MRP with Strikethrough)
                                            Text(
                                              'MRP ₹${product.mrp.toStringAsFixed(2)}',
                                              style: const TextStyle(
                                                fontSize: 11.5,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.subtitleText,
                                                decoration: TextDecoration.lineThrough,
                                              ),
                                            ),

                                            // Discount Badge
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                              decoration: BoxDecoration(
                                                color: AppColors.accentRose.withOpacity(0.12),
                                                borderRadius: BorderRadius.circular(6),
                                              ),
                                              child: Text(
                                                '${product.discountPercentage}% OFF',
                                                style: const TextStyle(
                                                  fontSize: 9.5,
                                                  fontWeight: FontWeight.w900,
                                                  color: AppColors.accentRose,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 4),

                                        // Unit Chip
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: AppColors.softChipBg,
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                          child: Text(
                                            product.defaultUnit,
                                            style: const TextStyle(
                                              fontSize: 10.5,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.subtitleText,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // iOS Liquid Add Button / Counter
                                  qtyInList == 0
                                      ? GestureDetector(
                                          onTap: () {
                                            listManager.addItem(
                                              product,
                                              mainCategory.title,
                                              subCategory.title,
                                            );
                                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              SnackBar(
                                                content: Text('Added ${product.name} to Monthly List'),
                                                duration: const Duration(seconds: 1),
                                                backgroundColor: AppColors.primaryDark,
                                                behavior: SnackBarBehavior.floating,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(12),
                                                ),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                                            decoration: BoxDecoration(
                                              color: AppColors.primary,
                                              borderRadius: BorderRadius.circular(16),
                                              boxShadow: AppColors.primaryGlow,
                                            ),
                                            child: Row(
                                              children: const [
                                                Icon(CupertinoIcons.add, size: 16, color: Colors.white),
                                                SizedBox(width: 4),
                                                Text(
                                                  'Add',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                                          decoration: BoxDecoration(
                                            color: AppColors.primary.withOpacity(0.12),
                                            borderRadius: BorderRadius.circular(14),
                                            border: Border.all(color: AppColors.primary.withOpacity(0.3)),
                                          ),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () => listManager.updateQuantity(product.id, -1),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(4.0),
                                                  child: Icon(
                                                    CupertinoIcons.minus,
                                                    color: AppColors.primaryDark,
                                                    size: 16,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                                child: Text(
                                                  '$qtyInList',
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    color: AppColors.primaryDark,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () => listManager.updateQuantity(product.id, 1),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(4.0),
                                                  child: Icon(
                                                    CupertinoIcons.add,
                                                    color: AppColors.primaryDark,
                                                    size: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),

              // Floating iOS Bar to jump to Monthly List
              if (listManager.totalItemCount > 0)
                Positioned(
                  bottom: 20,
                  left: 16,
                  right: 16,
                  child: IosLiquidGlassContainer(
                    blurSigma: 24,
                    color: AppColors.darkText.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(26),
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemsListScreen(listManager: listManager),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                gradient: AppColors.primaryGradient,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                '${listManager.totalItemCount}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(width: 14),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Items in Monthly List',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Est: ₹${listManager.totalEstimatedCost.toStringAsFixed(2)}',
                                  style: const TextStyle(
                                    color: AppColors.accentGold,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            children: const [
                              Text(
                                'View List',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(width: 6),
                              Icon(CupertinoIcons.arrow_right, color: Colors.white, size: 14),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}



