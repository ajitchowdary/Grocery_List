import 'dart:ui';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class IosLiquidGlassContainer extends StatelessWidget {
  final Widget child;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Gradient? gradient;
  final Color? color;
  final Color? borderColor;
  final double borderWidth;
  final List<BoxShadow>? boxShadow;
  final double blurSigma;
  final VoidCallback? onTap;

  const IosLiquidGlassContainer({
    Key? key,
    required this.child,
    this.borderRadius,
    this.padding,
    this.margin,
    this.gradient,
    this.color,
    this.borderColor,
    this.borderWidth = 1.5,
    this.boxShadow,
    this.blurSigma = 16.0,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius = borderRadius ?? BorderRadius.circular(22);
    final effectiveBoxShadow = boxShadow ?? AppColors.liquidGlassShadow;

    Widget content = Container(
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: effectiveBorderRadius,
        boxShadow: effectiveBoxShadow,
      ),
      child: ClipRRect(
        borderRadius: effectiveBorderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              color: color ?? Colors.white.withOpacity(0.65),
              gradient: gradient,
              borderRadius: effectiveBorderRadius,
              border: Border.all(
                color: borderColor ?? Colors.white.withOpacity(0.85),
                width: borderWidth,
              ),
            ),
            child: child,
          ),
        ),
      ),
    );

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: content,
      );
    }
    return content;
  }
}
