import 'package:flutter/material.dart';

class TypographyExtention extends ThemeExtension<TypographyExtention> {
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle h5;
  final TextStyle h6;
  final TextStyle body;
  final TextStyle bodyLight;

  TypographyExtention(
      {required this.h1,
      required this.h2,
      required this.h3,
      required this.h4,
      required this.h5,
      required this.h6,
      required this.body,
      required this.bodyLight});
  TypographyExtention.fromColors({
    required Color text,
    required Color textInverse,
    required Color textSubtle,
  })  : h1 = TextStyle(
          color: text,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        h2 = TextStyle(
          color: text,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        h3 = TextStyle(
          color: text,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        h4 = TextStyle(
          color: text,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        h5 = TextStyle(
          color: text,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
        h6 = TextStyle(
          color: text,
          fontSize: 5,
          fontWeight: FontWeight.bold,
        ),
        body = TextStyle(
          color: text,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        bodyLight = TextStyle(
          color: textSubtle,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        );

  @override
  ThemeExtension<TypographyExtention> copyWith({
    final TextStyle? h1,
    final TextStyle? h2,
    final TextStyle? h3,
    final TextStyle? h4,
    final TextStyle? h5,
    final TextStyle? h6,
    final TextStyle? body,
    final TextStyle? bodyLight,
  }) {
    return TypographyExtention(
        h1: h1 ?? this.h1,
        h2: h2 ?? this.h2,
        h3: h3 ?? this.h3,
        h4: h4 ?? this.h4,
        h5: h5 ?? this.h5,
        h6: h6 ?? this.h6,
        body: body ?? this.body,
        bodyLight: bodyLight ?? this.bodyLight);
  }

  @override
  ThemeExtension<TypographyExtention> lerp(
      covariant ThemeExtension<TypographyExtention>? other, double t) {
    if (other is! TypographyExtention) {
      return this;
    }
    return TypographyExtention(
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      h3: TextStyle.lerp(h3, other.h3, t)!,
      h4: TextStyle.lerp(h4, other.h4, t)!,
      h5: TextStyle.lerp(h5, other.h5, t)!,
      h6: TextStyle.lerp(h6, other.h6, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      bodyLight: TextStyle.lerp(bodyLight, other.bodyLight, t)!,
    );
  }
}
