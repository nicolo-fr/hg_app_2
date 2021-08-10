import 'package:flutter/material.dart';
import 'package:hg_app_2/core/presentation/page_layout.dart';
import 'package:hg_app_2/player/infrastructure/repositories/album_repository.dart';
import 'package:hg_app_2/player/presentation/widget/acts_tabs.dart';
import 'package:hg_app_2/player/presentation/widget/track_list_builder.dart';

class TracksPageView extends StatefulWidget {
  @override
  _TracksPageViewState createState() => _TracksPageViewState();
}

class _TracksPageViewState extends State<TracksPageView> {
  late PageController controller;
  int currentPage = 0;

  final album = LocalAlbumRepository().fetchAlbum();

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pageView = PageView(
      onPageChanged: (page) {
        setState(() {
          currentPage = page;
        });
      },
      controller: controller,
      children: [
        TracksListBuilder(
          tracksList: album.fetchTracksForAct(1),
        ),
        TracksListBuilder(
          tracksList: album.fetchTracksForAct(2),
        ),
        TracksListBuilder(
          tracksList: album.fetchTracksForAct(3),
        ),
      ],
    );

    

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PageLayout(
          title: 'Opéra',
        ),
        ActsTabs(
          controller: controller,
          currentPage: currentPage,
        ),
        Expanded(
          child: pageView,
        ),
      ],
    );
  }
}
