import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hg_app_2/core/routes/app_router.gr.dart';
import 'package:hg_app_2/player/core/providers.dart';
import 'package:hg_app_2/player/domain/track.dart';
import 'package:hg_app_2/player/presentation/widget/position_indicator.dart';
import 'package:hg_app_2/player/presentation/widget/track_info_display.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TrackPageAudioController extends ConsumerWidget {
  const TrackPageAudioController({Key? key, required this.track})
      : super(key: key);
  final Track track;

  @override
  Widget build(BuildContext context, WidgetReference ref) {
    final appRouter = AutoRouter.of(context);
    final albumPrvdr = ref.watch(albumProvider);
    final appAudioPlayerNotifProvider =
        ref.watch(appAudioPlayerNotifierProvider.notifier);
    final appAudioPlayerStateProvider =
        ref.watch(appAudioPlayerNotifierProvider);
    final deviceData = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black87,
          ],
        ),
      ),
      width: double.infinity,
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onDoubleTap: () {
                  if (track != albumPrvdr.fetchTrack(1)) {
                    final previousTrack = albumPrvdr.fetchPreviousTrack(track);
                    appRouter.replace(
                      TrackPageRoute(
                        track: previousTrack,
                      ),
                    );
                    appAudioPlayerNotifProvider.play(previousTrack, context);
                  }
                },
                child: IconButton(
                  splashRadius: 1,
                  iconSize: 40.0,
                  color: Colors.white,
                  onPressed: () {
                    appAudioPlayerNotifProvider.playFromStart(track, context);
                  },
                  icon: const Icon(
                    Icons.skip_previous,
                  ),
                ),
              ),
              IconButton(
                  splashRadius: 1,
                  iconSize: 54.0,
                  color: Colors.white,
                  onPressed: () {
                    appAudioPlayerStateProvider.maybeWhen(
                      orElse: () {},
                      playing: (trackPlaying) =>
                          appAudioPlayerNotifProvider.pause(trackPlaying),
                      paused: (trackPlaying) => appAudioPlayerNotifProvider
                          .play(trackPlaying, context),
                    );
                  },
                  icon: appAudioPlayerStateProvider.maybeWhen(
                    orElse: () {
                      return const Icon(Icons.play_arrow);
                    },
                    playing: (trackPlaying) => const Icon(Icons.pause),
                    paused: (trackPlaying) => const Icon(Icons.play_arrow),
                  )),
              IconButton(
                splashRadius: 1,
                iconSize: 40.0,
                color: Colors.white,
                onPressed: () {
                  if (!albumPrvdr.isLastTrack(track)) {
                    final nextTrack = albumPrvdr.fetchNextTrack(track);
                    appRouter.replace(
                      TrackPageRoute(
                        track: nextTrack,
                      ),
                    );
                    appAudioPlayerNotifProvider.play(nextTrack, context);
                  }
                },
                icon: const Icon(
                  Icons.skip_next,
                ),
              ),
            ],
          ),
          TrackPageInfoDisplay(track: track),
          const SizedBox(height: 24),
          PositionIndicator(
            width: MediaQuery.of(context).size.width,
            height: 8,
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}

class TrackPageInfoDisplay extends StatelessWidget {
  final Track track;

  const TrackPageInfoDisplay({Key? key, required this.track}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appRouter = AutoRouter.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TrackInfoDisplay(
              textColor: Colors.white,
              track: track,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.info,
              color: Colors.white,
            ),
            onPressed: () {
              appRouter.push(TrackMoreInfoPageRoute(track: track));
            },
          )
        ],
      ),
    );
  }
}
