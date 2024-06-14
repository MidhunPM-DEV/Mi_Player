import 'package:flutter/material.dart';
import 'package:miplayer/theme/extentions/apptheme.dart';
import 'package:miplayer/theme/extentions/typo_getter.dart';

class AppBarwid extends StatelessWidget implements PreferredSizeWidget {
  const AppBarwid({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppTheme.of(context).appthemeclr.primary,
      leading: Center(
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/app_logo.png'),
            ),
          ),
        ),
      ),
      title: Text(
        "Mi player",
        style: TypoTheme.of(context).typo.h3,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
