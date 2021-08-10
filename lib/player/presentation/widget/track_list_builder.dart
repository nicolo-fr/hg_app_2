import 'package:flutter/material.dart';
import 'package:hg_app_2/player/core/providers.dart';
import 'package:hg_app_2/player/domain/track.dart';
import 'package:hg_app_2/player/infrastructure/repositories/album_repository.dart';
import 'package:hg_app_2/player/presentation/widget/track_item_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TracksListBuilder extends StatelessWidget {
  final List<Track> tracksList;

  const TracksListBuilder({Key? key, required this.tracksList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context).size;
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      itemCount: tracksList.length,
      itemBuilder: (ctx, index) {
        return TrackItemBuilder(
          track: tracksList[index],
        );
      },
    );
  }
}
