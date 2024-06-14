import 'package:flutter/material.dart';
import 'package:miplayer/model/mainappctnrmodel.dart';
import 'package:miplayer/theme/extentions/app_color_palette.dart';
import 'package:miplayer/theme/extentions/typo_getter.dart';

class HomeContainerWid extends StatelessWidget {
  final MainAppCtnrModel containerelements;

  const HomeContainerWid({
    required this.containerelements,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColorPalette.black100),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              containerelements.ctnrIcon,
              cacheHeight: 35,
              cacheWidth: 35,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              containerelements.title,
              style: TypoTheme.of(context).typo.h4,
            ),
            Text(
              containerelements.subtitle,
              style: TextStyle(color: AppColorPalette.black50),
            ),
          ],
        ),
      ),
    );
  }
}
