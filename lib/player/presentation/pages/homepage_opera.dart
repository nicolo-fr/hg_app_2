import 'package:flutter/material.dart';
import 'package:hg_app_2/player/infrastructure/repositories/album_repository.dart';
import 'package:hg_app_2/player/presentation/widget/track_list_builder.dart';
import 'package:hg_app_2/player/presentation/widget/tracks_page_view.dart';

class HomepageOpera extends StatelessWidget {
  const HomepageOpera({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final album = LocalAlbumRepository().fetchAlbum();
    final List<Widget> children = [
        TracksListBuilder(
          
          tracksList: album.fetchTracksForAct(1),
        ),
        TracksListBuilder(
          tracksList: album.fetchTracksForAct(2),
        ),
        TracksListBuilder(
          tracksList: album.fetchTracksForAct(3),
        ),
      ];
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(child: TracksPageView(children: children,)),
    );
  }
}

