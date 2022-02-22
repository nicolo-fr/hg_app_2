import 'package:flutter/material.dart';
import 'package:hg_app_2/player/core/providers.dart';
import 'package:hg_app_2/player/domain/album.dart';
import 'package:hg_app_2/player/domain/track.dart';
import 'package:hg_app_2/player/presentation/widget/track_item_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TracksListBuilder extends StatelessWidget {
  final List<Track> tracksList;

  const TracksListBuilder({Key? key, required this.tracksList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      // physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: tracksList.length,
      itemBuilder: (ctx, index) {
        return TrackItemBuilder(
          track: tracksList[index],
        );
      },
    );
  }
}

// class TracksListBuilder extends StatelessWidget {
//   final List<Track> tracksList;

//   const TracksListBuilder({Key? key, required this.tracksList})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       // physics: const BouncingScrollPhysics(),
//       shrinkWrap: true,
//       padding: EdgeInsets.zero,
//       itemCount: tracksList.length,
//       itemBuilder: (ctx, index) {
//         return TrackItemBuilder(
//           track: tracksList[index],
//         );
//       },
//     );
//   }
// }
