import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../core/constants/app_colors.dart';
import '../core/widgets/ios_liquid_glass_container.dart';
import '../models/grocery_hierarchy_model.dart';
import 'products_list_screen.dart';
import '../providers/grocery_list_manager.dart';

class SubCategoryScreen extends StatelessWidget {
  final MainCategory category;
  final GroceryListManager listManager;

  const SubCategoryScreen({
    Key? key,
    required this.category,
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
                Text(category.emoji, style: const TextStyle(fontSize: 22)),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    category.title,
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
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // iOS Liquid Glass Category Banner Card
                IosLiquidGlassContainer(
                  blurSigma: 20,
                  gradient: AppColors.lightHeroGlassGradient,
                  borderRadius: BorderRadius.circular(26),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      IosLiquidGlassContainer(
                        blurSigma: 12,
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(18),
                        padding: const EdgeInsets.all(12),
                        child: Text(category.emoji, style: const TextStyle(fontSize: 32)),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              category.title,
                              style: const TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w900,
                                color: AppColors.darkText,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${category.subcategories.length} Subcategories • DMart & BigBasket Items',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.subtitleText,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Subcategories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: AppColors.darkText,
                      ),
                    ),
                    Text(
                      'Select to view products',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.subtitleText,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Subcategories iOS Liquid Glass List
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: category.subcategories.length,
                    itemBuilder: (context, index) {
                      final subCat = category.subcategories[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: IosLiquidGlassContainer(
                          blurSigma: 16,
                          color: Colors.white.withOpacity(0.85),
                          borderRadius: BorderRadius.circular(22),
                          padding: EdgeInsets.zero,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductsListScreen(
                                  mainCategory: category,
                                  subCategory: subCat,
                                  listManager: listManager,
                                ),
                              ),
                            );
                          },
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                            leading: IosLiquidGlassContainer(
                              blurSigma: 8,
                              color: AppColors.primaryLight.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(16),
                              padding: EdgeInsets.zero,
                              child: SizedBox(
                                width: 48,
                                height: 48,
                                child: Center(
                                  child: Text(subCat.emoji, style: const TextStyle(fontSize: 24)),
                                ),
                              ),
                            ),
                            title: Text(
                              subCat.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: AppColors.darkText,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                '${subCat.products.length} products available',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.subtitleText,
                                ),
                              ),
                            ),
                            trailing: Container(
                              padding: const EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                color: AppColors.primary.withOpacity(0.12),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                CupertinoIcons.chevron_right,
                                color: AppColors.primary,
                                size: 14,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}



