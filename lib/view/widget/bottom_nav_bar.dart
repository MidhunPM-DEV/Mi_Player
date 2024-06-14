import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

import 'package:miplayer/theme/extentions/apptheme.dart';

class MiNavBar extends StatelessWidget {
  MiNavBar({super.key, required this.pageController});
  final _controller = NotchBottomBarController();

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return AnimatedNotchBottomBar(
      durationInMilliSeconds: 10,
      notchColor: AppTheme.of(context).appthemeclr.secondary as Color,
      elevation: 0,
      notchBottomBarController: _controller,
      color: AppTheme.of(context).appthemeclr.primary as Color,
      bottomBarItems: [
        BottomBarItem(
          inActiveItem: Image.asset("assets/icons/home_outline_white.png"),
          activeItem: Image.asset("assets/icons/home_filled_white.png"),
        ),
        BottomBarItem(
          inActiveItem: Image.asset("assets/icons/heart_outline_white.png"),
          activeItem: Image.asset("assets/icons/heart_filled_white.png"),
        ),
        BottomBarItem(
          inActiveItem: Image.asset("assets/icons/play_outline_white.png"),
          activeItem: Image.asset("assets/icons/play_filled_white.png"),
        )
      ],
      onTap: (value) {
        pageController.animateToPage(value,
            duration: const Duration(milliseconds: 50), curve: Curves.linear);
      },
      kIconSize: 24,
      kBottomRadius: 20,
    );
  }
}
