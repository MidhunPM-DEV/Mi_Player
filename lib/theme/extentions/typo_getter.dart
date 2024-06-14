import 'package:flutter/material.dart';
import 'package:miplayer/theme/extentions/typoggraphy_extension.dart';

final class TypoTheme {
  final BuildContext context;

  TypoTheme.of(this.context);
  TypographyExtention get typo {
    return Theme.of(context).extension<TypographyExtention>()!;
  }
}
