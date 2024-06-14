import 'package:flutter/material.dart';

class AppThemeExtention extends ThemeExtension<AppThemeExtention> {
  final Color? primary;
  final Color? secondary;
  final Color? primaryInverse;

  AppThemeExtention(
      {required this.primary,
      required this.secondary,
      required this.primaryInverse});
  @override
  ThemeExtension<AppThemeExtention> copyWith({
    Color? primary,
    Color? secondary,
    Color? primaryInverse,
  }) {
    return AppThemeExtention(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      primaryInverse: primaryInverse ?? this.primaryInverse,
    );
  }

  @override
  ThemeExtension<AppThemeExtention> lerp(
      covariant ThemeExtension<AppThemeExtention>? other, double t) {
    if (other is! AppThemeExtention) {
      return this;
    }
    return AppThemeExtention(
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      primaryInverse: Color.lerp(primaryInverse, other.primaryInverse, t),
    );
  }
}
