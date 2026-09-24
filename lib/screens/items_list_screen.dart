import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../core/constants/app_colors.dart';
import '../core/widgets/ios_liquid_glass_container.dart';
import '../core/widgets/add_custom_item_sheet.dart';
import '../providers/grocery_list_manager.dart';

class ItemsListScreen extends StatelessWidget {
  final GroceryListManager listManager;

  const ItemsListScreen({
    Key? key,
    required this.listManager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: listManager,
      builder: (context, _) {
        final grouped = listManager.groupedItems;
        final totalCount = listManager.totalItemCount;
        final checkedCount = listManager.checkedItemCount;
        final progress = totalCount > 0 ? (checkedCount / totalCount) : 0.0;

        return Scaffold(
          backgroundColor: AppColors.background,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(CupertinoIcons.back, color: AppColors.darkText, size: 22),
              onPressed: () => Navigator.pop(context),
            ),
            title: const Text(
              'Monthly Grocery List 📋',
              style: TextStyle(
                color: AppColors.darkText,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(CupertinoIcons.add_circled_solid, color: AppColors.primary, size: 26),
                tooltip: 'Add Custom Item',
                onPressed: () => AddCustomItemSheet.show(context, listManager: listManager),
              ),
              if (totalCount > 0)
                PopupMenuButton<String>(
                  icon: const Icon(CupertinoIcons.ellipsis_circle_fill, color: AppColors.darkText),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  onSelected: (value) {
                    if (value == 'clear_checked') {
                      listManager.clearChecked();
                    } else if (value == 'clear_all') {
                      _showClearAllDialog(context);
                    }
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'clear_checked',
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.clear_circled, color: AppColors.primaryDark, size: 18),
                          SizedBox(width: 10),
                          Text('Clear Checked Items', style: TextStyle(fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'clear_all',
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.trash, color: AppColors.accentRose, size: 18),
                          SizedBox(width: 10),
                          Text('Clear Entire List', style: TextStyle(color: AppColors.accentRose, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          ),
          body: totalCount == 0
              ? _buildEmptyState(context)
              : Column(
                  children: [
                    // iOS Liquid Glass Shopping Progress Header Card
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                      child: IosLiquidGlassContainer(
                        blurSigma: 24,
                        gradient: AppColors.lightHeroGlassGradient,
                        borderRadius: BorderRadius.circular(26),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Shopping Progress',
                                      style: TextStyle(
                                        color: AppColors.subtitleText,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      '$checkedCount of $totalCount items in cart',
                                      style: const TextStyle(
                                        color: AppColors.darkText,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Est. Total Budget',
                                      style: TextStyle(
                                        color: AppColors.subtitleText,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      '₹${listManager.totalEstimatedCost.toStringAsFixed(2)}',
                                      style: const TextStyle(
                                        color: AppColors.primaryDark,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            // Progress Bar
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: LinearProgressIndicator(
                                value: progress,
                                backgroundColor: Colors.white,
                                valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
                                minHeight: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Categorized Items List
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: grouped.keys.length,
                        itemBuilder: (context, mainCatIndex) {
                          final mainCatTitle = grouped.keys.elementAt(mainCatIndex);
                          final subCats = grouped[mainCatTitle]!;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Main Category Header
                              Padding(
                                padding: const EdgeInsets.only(top: 14, bottom: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 4,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        color: AppColors.primary,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      mainCatTitle.toUpperCase(),
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w900,
                                        color: AppColors.darkText,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Subcategories & Products with iOS Liquid Glass Cards
                              ...subCats.entries.map((subCatEntry) {
                                final subCatTitle = subCatEntry.key;
                                final items = subCatEntry.value;

                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: IosLiquidGlassContainer(
                                    blurSigma: 16,
                                    color: Colors.white.withOpacity(0.85),
                                    borderRadius: BorderRadius.circular(22),
                                    padding: EdgeInsets.zero,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // Subcategory Header Label
                                        Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                                          decoration: BoxDecoration(
                                            color: AppColors.primaryLight.withOpacity(0.5),
                                            borderRadius: const BorderRadius.vertical(top: Radius.circular(22)),
                                          ),
                                          child: Text(
                                            subCatTitle,
                                            style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w900,
                                              color: AppColors.primaryDark,
                                            ),
                                          ),
                                        ),

                                        // Items inside this subcategory
                                        ...items.map((item) {
                                          return Column(
                                            children: [
                                              ListTile(
                                                contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                                                leading: Transform.scale(
                                                  scale: 1.1,
                                                  child: Checkbox(
                                                    value: item.isChecked,
                                                    activeColor: AppColors.primary,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(6),
                                                    ),
                                                    onChanged: (_) {
                                                      listManager.toggleChecked(item.product.id);
                                                    },
                                                  ),
                                                ),
                                                title: Text(
                                                  item.product.name,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 15,
                                                    color: item.isChecked
                                                        ? AppColors.subtitleText
                                                        : AppColors.darkText,
                                                    decoration: item.isChecked
                                                        ? TextDecoration.lineThrough
                                                        : TextDecoration.none,
                                                  ),
                                                ),
                                                subtitle: Padding(
                                                  padding: const EdgeInsets.only(top: 4),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        '${item.product.defaultUnit} • ',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w600,
                                                          color: AppColors.subtitleText,
                                                        ),
                                                      ),
                                                      Text(
                                                        '₹${item.product.estimatedPrice.toStringAsFixed(2)} ',
                                                        style: TextStyle(
                                                          fontSize: 12.5,
                                                          fontWeight: FontWeight.w900,
                                                          color: AppColors.primaryDark,
                                                        ),
                                                      ),
                                                      Text(
                                                        'MRP ₹${item.product.mrp.toStringAsFixed(2)}',
                                                        style: TextStyle(
                                                          fontSize: 11,
                                                          fontWeight: FontWeight.w500,
                                                          color: AppColors.subtitleText,
                                                          decoration: TextDecoration.lineThrough,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                trailing: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    // Quantity controls
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: AppColors.softChipBg,
                                                        borderRadius: BorderRadius.circular(12),
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          IconButton(
                                                            icon: const Icon(CupertinoIcons.minus, size: 14),
                                                            onPressed: () => listManager.updateQuantity(
                                                                item.product.id, -1),
                                                            constraints: const BoxConstraints(),
                                                            padding: const EdgeInsets.all(6),
                                                          ),
                                                          Text(
                                                            '${item.quantity}',
                                                            style: const TextStyle(
                                                              fontWeight: FontWeight.w900,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                          IconButton(
                                                            icon: const Icon(CupertinoIcons.add, size: 14),
                                                            onPressed: () => listManager.updateQuantity(
                                                                item.product.id, 1),
                                                            constraints: const BoxConstraints(),
                                                            padding: const EdgeInsets.all(6),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    IconButton(
                                                      icon: const Icon(CupertinoIcons.trash,
                                                          color: AppColors.accentRose, size: 18),
                                                      onPressed: () => listManager.removeItem(item.product.id),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Divider(height: 1, indent: 16, endIndent: 16),
                                            ],
                                          );
                                        }).toList(),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IosLiquidGlassContainer(
              blurSigma: 16,
              color: AppColors.primary.withOpacity(0.12),
              borderRadius: BorderRadius.circular(40),
              padding: const EdgeInsets.all(28),
              child: const Text('📝', style: TextStyle(fontSize: 64)),
            ),
            const SizedBox(height: 24),
            const Text(
              'Your Monthly List is Empty',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                color: AppColors.darkText,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Stop writing on paper! Select items from Categories -> Subcategories to build your paperless grocery list for the month.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.subtitleText,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => AddCustomItemSheet.show(context, listManager: listManager),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Row(
                    children: const [
                      Icon(CupertinoIcons.add, color: Colors.white, size: 18),
                      SizedBox(width: 6),
                      Text(
                        'Add Custom Item',
                        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: AppColors.primaryDark, width: 1.5),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    'Browse',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14, color: AppColors.primaryDark),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showClearAllDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        title: const Text('Clear Entire List?', style: TextStyle(fontWeight: FontWeight.w900)),
        content: const Text('Are you sure you want to remove all items from your monthly list?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel', style: TextStyle(color: AppColors.subtitleText)),
          ),
          ElevatedButton(
            onPressed: () {
              listManager.clearList();
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.accentRose,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            child: const Text('Clear All', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}


