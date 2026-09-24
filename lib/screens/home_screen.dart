import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../core/constants/app_colors.dart';
import '../core/widgets/ios_liquid_glass_container.dart';
import '../data/grocery_data.dart';
import '../models/grocery_hierarchy_model.dart';
import '../providers/grocery_list_manager.dart';
import 'subcategory_screen.dart';
import 'items_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GroceryListManager _listManager = GroceryListManager();
  int _currentNavIndex = 0;
  String _searchQuery = '';
  final List<MainCategory> _mainCategories = GroceryData.categories;
  final TextEditingController _searchController = TextEditingController();

  final List<String> _quickSearchChips = [
    '🔥 Everest Masalas',
    '🌾 Atta & Flours',
    '🥛 Amul Milk',
    '🪔 Pooja Needs',
    '🧹 Cleaners',
    '🍳 Cookware',
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _listManager,
      builder: (context, _) {
        return Scaffold(
          backgroundColor: AppColors.background,
          body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                _currentNavIndex == 1
                    ? ItemsListScreen(listManager: _listManager)
                    : CustomScrollView(
                        physics: const BouncingScrollPhysics(),
                        slivers: [
                          // Authentic iOS Frosted Liquid Glass Header
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                              child: IosLiquidGlassContainer(
                                blurSigma: 24,
                                gradient: AppColors.lightHeroGlassGradient,
                                borderRadius: BorderRadius.circular(32),
                                padding: const EdgeInsets.all(22),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Top Row: iOS Store Badge & My List Button
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        IosLiquidGlassContainer(
                                          blurSigma: 12,
                                          color: Colors.white.withOpacity(0.7),
                                          borderRadius: BorderRadius.circular(20),
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                          child: Row(
                                            children: const [
                                              Icon(CupertinoIcons.circle_fill, color: AppColors.primary, size: 8),
                                              SizedBox(width: 6),
                                              Text(
                                                'DMART & BIGBASKET',
                                                style: TextStyle(
                                                  color: AppColors.darkText,
                                                  fontSize: 10.5,
                                                  fontWeight: FontWeight.w900,
                                                  letterSpacing: 0.8,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        // iOS Monthly List Badge Button
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ItemsListScreen(listManager: _listManager),
                                              ),
                                            );
                                          },
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                                                decoration: BoxDecoration(
                                                  color: AppColors.primary,
                                                  borderRadius: BorderRadius.circular(18),
                                                  border: Border.all(color: Colors.white.withOpacity(0.6), width: 1.5),
                                                  boxShadow: AppColors.primaryGlow,
                                                ),
                                                child: Row(
                                                  children: const [
                                                    Icon(CupertinoIcons.checkmark_alt_circle_fill,
                                                        color: Colors.white, size: 18),
                                                    SizedBox(width: 6),
                                                    Text(
                                                      'My List',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w900,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (_listManager.totalItemCount > 0)
                                                Positioned(
                                                  right: -4,
                                                  top: -4,
                                                  child: Container(
                                                    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.accentRose,
                                                      borderRadius: BorderRadius.circular(12),
                                                      border: Border.all(color: Colors.white, width: 2),
                                                    ),
                                                    child: Text(
                                                      '${_listManager.totalItemCount}',
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w900,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 18),

                                    const Text(
                                      'Supermarket Grocery List 🛒',
                                      style: TextStyle(
                                        color: AppColors.darkText,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: -0.5,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    const Text(
                                      'Stop writing on paper. Tap categories to build your monthly shopping list.',
                                      style: TextStyle(
                                        color: AppColors.subtitleText,
                                        fontSize: 12.5,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3,
                                      ),
                                    ),
                                    const SizedBox(height: 18),

                                    // iOS Liquid Glass Search Input Box
                                    IosLiquidGlassContainer(
                                      blurSigma: 20,
                                      color: Colors.white.withOpacity(0.85),
                                      borderRadius: BorderRadius.circular(22),
                                      padding: const EdgeInsets.symmetric(horizontal: 14),
                                      child: SizedBox(
                                        height: 48,
                                        child: TextField(
                                          controller: _searchController,
                                          onChanged: (val) {
                                            setState(() {
                                              _searchQuery = val;
                                            });
                                          },
                                          decoration: InputDecoration(
                                            hintText: 'Search Everest masalas, Atta, Oil, Soaps...',
                                            hintStyle: const TextStyle(
                                              color: AppColors.subtitleText,
                                              fontSize: 13.5,
                                            ),
                                            prefixIcon: const Icon(CupertinoIcons.search,
                                                color: AppColors.primary, size: 20),
                                            suffixIcon: _searchQuery.isNotEmpty
                                                ? IconButton(
                                                    icon: const Icon(CupertinoIcons.clear_circled_solid,
                                                        color: AppColors.subtitleText, size: 18),
                                                    onPressed: () {
                                                      _searchController.clear();
                                                      setState(() {
                                                        _searchQuery = '';
                                                      });
                                                    },
                                                  )
                                                : null,
                                            border: InputBorder.none,
                                            contentPadding: const EdgeInsets.symmetric(vertical: 14),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          // Quick Chips & Section Title
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    physics: const BouncingScrollPhysics(),
                                    child: Row(
                                      children: _quickSearchChips.map((chipText) {
                                        final keyword = chipText
                                            .replaceAll(RegExp(r'[^\w\s]'), '')
                                            .trim()
                                            .split(' ')
                                            .first;
                                        return GestureDetector(
                                          onTap: () {
                                            _searchController.text = keyword;
                                            setState(() {
                                              _searchQuery = keyword;
                                            });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(right: 8),
                                            child: IosLiquidGlassContainer(
                                              blurSigma: 12,
                                              color: Colors.white.withOpacity(0.8),
                                              borderRadius: BorderRadius.circular(20),
                                              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                                              child: Text(
                                                chipText,
                                                style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                  color: AppColors.darkText,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  const SizedBox(height: 18),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'Grocery Categories',
                                            style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w900,
                                              color: AppColors.darkText,
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          IosLiquidGlassContainer(
                                            blurSigma: 8,
                                            color: AppColors.primaryLight.withOpacity(0.6),
                                            borderRadius: BorderRadius.circular(12),
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                                            child: Text(
                                              '${_mainCategories.length}',
                                              style: const TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w900,
                                                color: AppColors.primaryDark,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        '3 in row',
                                        style: TextStyle(
                                          fontSize: 11.5,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.subtitleText,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // 3-Column iOS Liquid Glass Category Grid
                          SliverPadding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            sliver: SliverGrid(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 0.92,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  final displayedCategories = _searchQuery.isEmpty
                                      ? _mainCategories
                                      : _mainCategories.where((cat) {
                                          final matchesTitle =
                                              cat.title.toLowerCase().contains(_searchQuery.toLowerCase());
                                          final matchesSub = cat.subcategories.any((sub) =>
                                              sub.title.toLowerCase().contains(_searchQuery.toLowerCase()) ||
                                              sub.products.any((p) =>
                                                  p.name.toLowerCase().contains(_searchQuery.toLowerCase())));
                                          return matchesTitle || matchesSub;
                                        }).toList();

                                  if (index >= displayedCategories.length) return null;
                                  final category = displayedCategories[index];
                                  final gradientIndex = index % AppColors.categoryGradients.length;
                                  final gradient = AppColors.categoryGradients[gradientIndex];

                                  return _buildIosCategoryCard(category, gradient);
                                },
                                childCount: (_searchQuery.isEmpty
                                    ? _mainCategories
                                    : _mainCategories.where((cat) {
                                        final matchesTitle =
                                            cat.title.toLowerCase().contains(_searchQuery.toLowerCase());
                                        final matchesSub = cat.subcategories.any((sub) =>
                                            sub.title.toLowerCase().contains(_searchQuery.toLowerCase()) ||
                                            sub.products.any((p) =>
                                                p.name.toLowerCase().contains(_searchQuery.toLowerCase())));
                                        return matchesTitle || matchesSub;
                                      }).toList()).length,
                              ),
                            ),
                          ),

                          const SliverToBoxAdapter(
                            child: SizedBox(height: 120),
                          ),
                        ],
                      ),

                // Floating iOS Frosted Liquid Cart Bar at Bottom
                if (_listManager.totalItemCount > 0 && _currentNavIndex != 1)
                  Positioned(
                    bottom: 84,
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
                            builder: (context) => ItemsListScreen(listManager: _listManager),
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
                                  '${_listManager.totalItemCount}',
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
                                    'Monthly List Active',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Est. ₹${_listManager.totalEstimatedCost.toStringAsFixed(2)}',
                                    style: const TextStyle(
                                      color: AppColors.accentGold,
                                      fontSize: 17,
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
                                  'Open List',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(width: 6),
                                Icon(CupertinoIcons.arrow_right,
                                    color: Colors.white, size: 14),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                // iOS Style Floating Liquid Navigation Bar
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: IosLiquidGlassContainer(
                    blurSigma: 24,
                    color: Colors.white.withOpacity(0.85),
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(26)),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: SizedBox(
                      height: 58,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildNavItem(0, CupertinoIcons.square_grid_2x2_fill, 'Categories'),
                          _buildNavItem(1, CupertinoIcons.list_bullet_indent, 'Items List'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildIosCategoryCard(MainCategory category, LinearGradient gradient) {
    return IosLiquidGlassContainer(
      blurSigma: 16,
      gradient: gradient,
      borderRadius: BorderRadius.circular(20),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SubCategoryScreen(
              category: category,
              listManager: _listManager,
            ),
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // iOS Frosted Emoji Badge
          IosLiquidGlassContainer(
            blurSigma: 12,
            color: Colors.white.withOpacity(0.85),
            borderRadius: BorderRadius.circular(14),
            padding: EdgeInsets.zero,
            child: SizedBox(
              width: 42,
              height: 42,
              child: Center(
                child: Text(category.emoji, style: const TextStyle(fontSize: 22)),
              ),
            ),
          ),
          const SizedBox(height: 8),

          // Title
          Text(
            category.title,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 12,
              color: AppColors.darkText,
              height: 1.15,
            ),
          ),
          const SizedBox(height: 4),

          // Subcategory Count Chip
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '${category.subcategories.length} sub',
              style: const TextStyle(
                fontSize: 9.5,
                fontWeight: FontWeight.w800,
                color: AppColors.primaryDark,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = _currentNavIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentNavIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary.withOpacity(0.12) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.primary : AppColors.subtitleText,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: isSelected ? FontWeight.w900 : FontWeight.w600,
                color: isSelected ? AppColors.primary : AppColors.subtitleText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



