import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/constants/app_colors.dart';
import '../core/widgets/ios_liquid_glass_container.dart';
import 'onboarding_screen.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _scaleAnimation = Tween<double>(begin: 0.7, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _controller.forward();

    _checkFirstTimeLaunch();
  }

  Future<void> _checkFirstTimeLaunch() async {
    bool hasSeenOnboarding = false;
    try {
      final prefs = await SharedPreferences.getInstance();
      hasSeenOnboarding = prefs.getBool('has_seen_onboarding') ?? false;
    } catch (_) {}

    await Future.delayed(const Duration(milliseconds: 1800));

    if (!mounted) return;

    if (hasSeenOnboarding) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 500),
        ),
      );
    } else {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const OnboardingScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 600),
        ),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppColors.lightHeroGlassGradient,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Ambient glowing glass spheres
            Positioned(
              top: -60,
              left: -60,
              child: Container(
                width: 240,
                height: 240,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary.withOpacity(0.15),
                ),
              ),
            ),
            Positioned(
              bottom: -80,
              right: -80,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.accentGold.withOpacity(0.12),
                ),
              ),
            ),

            // Animated iOS Glass Center Card
            FadeTransition(
              opacity: _fadeAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: IosLiquidGlassContainer(
                    blurSigma: 24,
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(40),
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 38),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // iOS Liquid Glass Icon Badge
                        IosLiquidGlassContainer(
                          blurSigma: 16,
                          color: AppColors.primaryLight.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(32),
                          padding: const EdgeInsets.all(22),
                          child: const Text(
                            '🛒',
                            style: TextStyle(fontSize: 56),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Title
                        const Text(
                          'Grocery List',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w900,
                            color: AppColors.darkText,
                            letterSpacing: -0.5,
                          ),
                        ),
                        const SizedBox(height: 8),

                        // iOS Store Badge Pill
                        IosLiquidGlassContainer(
                          blurSigma: 8,
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(20),
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(CupertinoIcons.checkmark_seal_fill,
                                  color: AppColors.primary, size: 14),
                              SizedBox(width: 6),
                              Text(
                                'DMART & BIGBASKET PAPERLESS',
                                style: TextStyle(
                                  fontSize: 10.5,
                                  fontWeight: FontWeight.w900,
                                  color: AppColors.primaryDark,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Bottom iOS Cupertino Loader
            Positioned(
              bottom: 60,
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: Column(
                  children: const [
                    CupertinoActivityIndicator(
                      radius: 14,
                      color: AppColors.primary,
                    ),
                    SizedBox(height: 14),
                    Text(
                      'Loading your market...',
                      style: TextStyle(
                        color: AppColors.subtitleText,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

