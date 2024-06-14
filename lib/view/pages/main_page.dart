import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miplayer/theme/extentions/apptheme.dart';
import 'package:miplayer/view/pages/favorite_page.dart';
import 'package:miplayer/view/pages/home_page.dart';
import 'package:miplayer/view/widget/app_bar.dart';
import 'package:miplayer/view/widget/bottom_nav_bar.dart';

class MainPage extends ConsumerWidget {
  MainPage({super.key});

  final _pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppTheme.of(context).appthemeclr.primary,

      //**customized appbar widget */
      appBar: const AppBarwid(),
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          const FavoritePage(),
        ],
      ),
      //**customized bottomNav bar */
      bottomNavigationBar: MiNavBar(
        pageController: _pageController,
      ),
    );
  }
}
