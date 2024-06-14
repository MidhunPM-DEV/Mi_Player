import 'package:flutter/material.dart';
import 'package:miplayer/model/mainappctnrmodel.dart';
import 'package:miplayer/theme/extentions/apptheme.dart';

import 'package:miplayer/view/widget/homecontainerwid.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<MainAppCtnrModel> containerElements = [
    MainAppCtnrModel(
        ctnrIcon: "assets/icons/recent_icon.png",
        title: "Recent",
        subtitle: "subtitle"),
    MainAppCtnrModel(
        ctnrIcon: "assets/icons/favourite_icon.png",
        title: "Favourite",
        subtitle: "subtitle"),
    MainAppCtnrModel(
        ctnrIcon: "assets/icons/audio_icon.png",
        title: "Audio",
        subtitle: "subtitle"),
    MainAppCtnrModel(
        ctnrIcon: "assets/icons/video_icon.png",
        title: "Video",
        subtitle: "subtitle"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.of(context).appthemeclr.primary,
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 1.3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  maxCrossAxisExtent: 300,
                ),
                itemCount: containerElements.length,
                itemBuilder: (BuildContext context, int index) {
                  /// Using a widget that returns a Container
                  return HomeContainerWid(
                    containerelements: containerElements[index],
                  );
                },
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList.separated(
                itemCount: 10,
                itemBuilder: (context, index) => const Card(
                  child: ListTile(
                    leading: CircleAvatar(),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 5,
                ),
              ),
            )
          ],
        ));
  }
}
