import 'package:flutter/material.dart';
import 'package:miplayer/theme/extentions/apptheme_extention.dart';

final class AppTheme {
  final BuildContext context;
  AppTheme.of(this.context);
  AppThemeExtention get appthemeclr {
    return Theme.of(context).extension<AppThemeExtention>()!;
  }
}
