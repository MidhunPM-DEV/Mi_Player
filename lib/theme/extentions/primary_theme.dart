import 'package:flutter/material.dart';
import 'package:miplayer/theme/extentions/app_color_palette.dart';
import 'package:miplayer/theme/extentions/apptheme_extention.dart';
import 'package:miplayer/theme/extentions/typoggraphy_extension.dart';

final primaryTheme = ThemeData(extensions: [
  AppThemeExtention(
    primary: AppColorPalette.black500,
    secondary: AppColorPalette.red500,
    primaryInverse: AppColorPalette.white,
  ),
  TypographyExtention.fromColors(
    text: AppColorPalette.white,
    textInverse: AppColorPalette.black,
    textSubtle: Colors.grey,
  ),
]);
