import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hg_app_2/core/routes/app_router.gr.dart';
import 'package:hg_app_2/player/core/providers.dart';
import 'package:hg_app_2/player/domain/track.dart';
import 'package:hg_app_2/player/presentation/widget/playing_animated_icon.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TrackItemBuilder extends ConsumerWidget {
  final Track track;

  const TrackItemBuilder({Key? key, required this.track}) : super(key: key);

  String actInRomanNumber(int actNbr) {
    if (actNbr == 1) {
      return 'I';
    } else if (actNbr == 2) {
      return 'II';
    } else if (actNbr == 3) {
      return 'III';
    } else {
      throw Error();
    }
  }

  @override
  Widget build(BuildContext context, WidgetReference ref) {
    final appAudioPlayerStateProvider =
        ref.watch(appAudioPlayerNotifierProvider);
    final appAudioPlayerNotifProvider =
        ref.watch(appAudioPlayerNotifierProvider.notifier);
    final appRouter = AutoRouter.of(context);

    const Icon playIcon = Icon(
      Icons.play_circle_fill,
      color: Colors.black26,
    );

    final Widget icon = appAudioPlayerStateProvider.maybeWhen(orElse: () {
      return playIcon;
    }, playing: (trackPlaying) {
      if (trackPlaying == track) {
        return const PlayingAnimatedIcon();
      }
      return playIcon;
    });

    return ListTile(
      // ignore: sized_box_for_whitespace
      leading: Container(
        width: 56,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            track.scene == 0
                ? actInRomanNumber(track.act)
                : '${actInRomanNumber(track.act)}, ${track.scene}',
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),
          ),
        ),
      ),
      title: Text(
        track.titleFR,
        style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.black.withOpacity(0.65),
        ),
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        track.titleDE,
        style:  TextStyle(fontFamily: 'Lato', fontStyle: FontStyle.italic, color: Colors.black.withOpacity(0.38),),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: icon,
      onTap: () {
        appAudioPlayerNotifProvider.play(track, context);
        appRouter.push(TrackPageRoute(track: track));
        
      },
    );
  }
}
