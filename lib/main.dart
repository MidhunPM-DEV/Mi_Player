import 'package:flutter/material.dart';

import 'package:miplayer/theme/extentions/primary_theme.dart';
import 'package:miplayer/view/pages/home_page.dart';
import 'package:miplayer/view/pages/main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: primaryTheme,
      home: MainPage(),
    );
  }
}
