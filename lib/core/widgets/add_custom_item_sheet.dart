import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../constants/app_colors.dart';
import '../widgets/ios_liquid_glass_container.dart';
import '../../providers/grocery_list_manager.dart';
import '../../data/grocery_data.dart';

class AddCustomItemSheet extends StatefulWidget {
  final GroceryListManager listManager;
  final String? initialCategory;
  final String? initialSubCategory;

  const AddCustomItemSheet({
    Key? key,
    required this.listManager,
    this.initialCategory,
    this.initialSubCategory,
  }) : super(key: key);

  static void show(
    BuildContext context, {
    required GroceryListManager listManager,
    String? initialCategory,
    String? initialSubCategory,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => AddCustomItemSheet(
        listManager: listManager,
        initialCategory: initialCategory,
        initialSubCategory: initialSubCategory,
      ),
    );
  }

  @override
  State<AddCustomItemSheet> createState() => _AddCustomItemSheetState();
}

class _AddCustomItemSheetState extends State<AddCustomItemSheet> {
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _mrpController = TextEditingController();
  final _unitController = TextEditingController(text: '1 pc');

  String _selectedCategory = 'Grocery';
  String _selectedEmoji = '🛍️';

  final List<String> _emojiOptions = [
    '🛍️', '🏷️', '🍎', '🥦', '🥛', '🍞', '🧈', '🍿', '🧼', '🍳', '🌾', '☕', '🍫', '🧴'
  ];

  @override
  void initState() {
    super.initState();
    if (widget.initialCategory != null && widget.initialCategory!.isNotEmpty) {
      _selectedCategory = widget.initialCategory!;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _mrpController.dispose();
    _unitController.dispose();
    super.dispose();
  }

  void _submit() {
    final name = _nameController.text.trim();
    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter an item name'),
          backgroundColor: AppColors.accentRose,
        ),
      );
      return;
    }

    final price = double.tryParse(_priceController.text.trim()) ?? 0.0;
    final mrpVal = double.tryParse(_mrpController.text.trim());
    final mrp = (mrpVal != null && mrpVal > price) ? mrpVal : null;
    final unit = _unitController.text.trim();

    widget.listManager.addCustomItem(
      name: name,
      mainCategoryTitle: _selectedCategory,
      subCategoryTitle: widget.initialSubCategory ?? 'Custom Items',
      unit: unit.isNotEmpty ? unit : '1 pc',
      estimatedPrice: price,
      originalPrice: mrp,
      emoji: _selectedEmoji,
    );

    Navigator.pop(context);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Added "$name" to your Monthly List! 🛒'),
        backgroundColor: AppColors.primaryDark,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = GroceryData.categories.map((c) => c.title).toList();
    if (!categories.contains(_selectedCategory)) {
      _selectedCategory = categories.first;
    }

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: IosLiquidGlassContainer(
        blurSigma: 24,
        color: Colors.white.withOpacity(0.95),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
        padding: const EdgeInsets.fromLTRB(22, 16, 22, 28),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Sheet Handle Indicator
              Center(
                child: Container(
                  width: 42,
                  height: 5,
                  decoration: BoxDecoration(
                    color: AppColors.subtitleText.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 18),

              // Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text('➕ ', style: TextStyle(fontSize: 22)),
                      Text(
                        'Add Custom Item',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: AppColors.darkText,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(CupertinoIcons.xmark_circle_fill,
                        color: AppColors.subtitleText, size: 24),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const Text(
                'Add any item missing in the catalog to your shopping list.',
                style: TextStyle(fontSize: 12.5, color: AppColors.subtitleText),
              ),
              const SizedBox(height: 20),

              // Item Name Input
              const Text(
                'ITEM NAME *',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: AppColors.darkText, letterSpacing: 0.5),
              ),
              const SizedBox(height: 6),
              IosLiquidGlassContainer(
                blurSigma: 12,
                color: AppColors.background.withOpacity(0.8),
                borderRadius: BorderRadius.circular(16),
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                child: TextField(
                  controller: _nameController,
                  autofocus: true,
                  style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.darkText),
                  decoration: const InputDecoration(
                    hintText: 'e.g. Loose Jaggery, Milton Flask, Oats',
                    hintStyle: TextStyle(color: AppColors.subtitleText, fontSize: 13),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Category & Pack Unit Row
              Row(
                children: [
                  // Category Selector
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'CATEGORY',
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: AppColors.darkText, letterSpacing: 0.5),
                        ),
                        const SizedBox(height: 6),
                        IosLiquidGlassContainer(
                          blurSigma: 12,
                          color: AppColors.background.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(16),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _selectedCategory,
                              isExpanded: true,
                              icon: const Icon(CupertinoIcons.chevron_down, size: 14, color: AppColors.primary),
                              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13, color: AppColors.darkText),
                              onChanged: (val) {
                                if (val != null) {
                                  setState(() => _selectedCategory = val);
                                }
                              },
                              items: categories.map((cat) {
                                return DropdownMenuItem(
                                  value: cat,
                                  child: Text(cat, overflow: TextOverflow.ellipsis),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),

                  // Pack Unit
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'UNIT / PACK',
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: AppColors.darkText, letterSpacing: 0.5),
                        ),
                        const SizedBox(height: 6),
                        IosLiquidGlassContainer(
                          blurSigma: 12,
                          color: AppColors.background.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(16),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                          child: TextField(
                            controller: _unitController,
                            style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.darkText),
                            decoration: const InputDecoration(
                              hintText: '1 pc, 1 kg',
                              hintStyle: TextStyle(color: AppColors.subtitleText, fontSize: 12),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Price & MRP Row
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'ESTIMATED PRICE (₹)',
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: AppColors.darkText, letterSpacing: 0.5),
                        ),
                        const SizedBox(height: 6),
                        IosLiquidGlassContainer(
                          blurSigma: 12,
                          color: AppColors.background.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(16),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                          child: TextField(
                            controller: _priceController,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontWeight: FontWeight.w900, color: AppColors.primaryDark),
                            decoration: const InputDecoration(
                              hintText: 'e.g. 120',
                              hintStyle: TextStyle(color: AppColors.subtitleText, fontSize: 13),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'ORIGINAL MRP (₹)',
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: AppColors.subtitleText, letterSpacing: 0.5),
                        ),
                        const SizedBox(height: 6),
                        IosLiquidGlassContainer(
                          blurSigma: 12,
                          color: AppColors.background.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(16),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                          child: TextField(
                            controller: _mrpController,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.subtitleText),
                            decoration: const InputDecoration(
                              hintText: 'e.g. 150 (Optional)',
                              hintStyle: TextStyle(color: AppColors.subtitleText, fontSize: 12),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),

              // Emoji Selector
              const Text(
                'CHOOSE EMOJI ICON',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: AppColors.darkText, letterSpacing: 0.5),
              ),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: _emojiOptions.map((emoji) {
                    final isSelected = _selectedEmoji == emoji;
                    return GestureDetector(
                      onTap: () => setState(() => _selectedEmoji = emoji),
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: isSelected ? AppColors.primaryLight : Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: isSelected ? AppColors.primary : AppColors.lightBorder,
                            width: isSelected ? 2 : 1,
                          ),
                        ),
                        child: Text(emoji, style: const TextStyle(fontSize: 22)),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 24),

              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _submit,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(CupertinoIcons.cart_badge_plus, color: Colors.white, size: 20),
                      SizedBox(width: 8),
                      Text(
                        'Add to Monthly List 🛒',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
