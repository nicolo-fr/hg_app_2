import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hg_app_2/core/routes/app_router.gr.dart';
import 'package:hg_app_2/player/core/providers.dart';
import 'package:hg_app_2/player/presentation/widget/position_indicator.dart';
import 'package:hg_app_2/player/presentation/widget/track_info_display.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomStickyPlayer extends ConsumerWidget {
  const BottomStickyPlayer({Key? key}) : super(key: key);

  static double bottomStickyPlayerHeight = getBottomStickyPlayerHeight();

  static const double imagePreviewWidth = 84;
  static double imagePreviewHeight = bottomStickyPlayerHeight;

  @override
  Widget build(BuildContext context, WidgetReference ref) {
    final appAudioPlayerNotifProvider =
        ref.watch(appAudioPlayerNotifierProvider.notifier);
    final appAudioPlayerStateProvider =
        ref.watch(appAudioPlayerNotifierProvider);
    final albumPlayingProvider = ref.watch(albumProvider);
    final deviceData = MediaQuery.of(context).size;
    final appRouter = AutoRouter.of(context);

    void Function() navigateToTrackPage() {
      return appAudioPlayerStateProvider.maybeWhen(
        initial: (track) => () {
          appAudioPlayerNotifProvider.play(track, context);
          appRouter.push(TrackPageRoute(track: track));
        },
        playing: (track) => () {
          appAudioPlayerNotifProvider.play(track, context);
          appRouter.push(TrackPageRoute(track: track));
        },
        paused: (track) => () {
          appAudioPlayerNotifProvider.play(track, context);
          appRouter.push(TrackPageRoute(track: track));
        },
        stopped: () => () {
          appAudioPlayerNotifProvider.play(
              albumPlayingProvider.fetchTrack(1), context);
          appRouter
              .push(TrackPageRoute(track: albumPlayingProvider.fetchTrack(1)));
        },
        orElse: () => () {},
      );
    }

    Widget getIconButton() {
      return appAudioPlayerStateProvider.maybeWhen(
        initial: (track) => CustomIconButton(
          onPressed: () {
            appAudioPlayerNotifProvider.play(track, context);

          },
          iconData: Icons.play_circle_fill,
        ),
        playing: (track) => CustomIconButton(
          onPressed: () {
            appAudioPlayerNotifProvider.pause(track);
          },
          iconData: Icons.pause_circle_filled,
        ),
        paused: (track) => CustomIconButton(
          onPressed: () {
            appAudioPlayerNotifProvider.play(track, context);
          },
          iconData: Icons.play_circle_fill,
        ),
        stopped: () => CustomIconButton(
          onPressed: () {
            appAudioPlayerNotifProvider.play(
                albumPlayingProvider.tracks[0], context);
          },
          iconData: Icons.play_circle_fill,
        ),
        orElse: () {
          return CustomIconButton(
            onPressed: () {},
            iconData: Icons.equalizer,
          );
        },
      );
    }

    return GestureDetector(
      onTap: navigateToTrackPage(),
      child: Container(
        decoration: const BoxDecoration(
          // color: Color(0xffF7F7F7),
          color: Colors.white,
          boxShadow:  [BoxShadow(blurRadius: 1, spreadRadius: 2, color: Color(0xffF7F7F7))],
        ),
        height: 68,
        child: Row(children: [
           ImagePreview(
            imagePreviewWidth: imagePreviewWidth,
            imagePreviewHeight: imagePreviewHeight,
          ),
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Stack(
                children: [
                  PositionIndicator(
                    width: deviceData.width - imagePreviewWidth,
                    height: imagePreviewHeight,
                    color: Theme.of(context).accentColor.withOpacity(0.25),
                  ),
                  Row(
                    children: [
                      const TrackInfo(),
                      getIconButton(),
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class ImagePreview extends ConsumerWidget {
  const ImagePreview({
    Key? key,
    required this.imagePreviewWidth,
    required this.imagePreviewHeight,
  }) : super(key: key);

  final double imagePreviewWidth;
  final double imagePreviewHeight;

  @override
  Widget build(BuildContext context, WidgetReference ref) {
    final appAudioPlayerNotifProvider =
        ref.watch(appAudioPlayerNotifierProvider.notifier);
    final appAudioPlayerStateProvider =
        ref.watch(appAudioPlayerNotifierProvider);
    return ClipRect(
      // ignore: sized_box_for_whitespace
      child: Container(
        width: imagePreviewWidth,
        height: imagePreviewHeight,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset(
            appAudioPlayerStateProvider.maybeWhen(
              initial: (track) => track.imagePath,
              playing: (track) => track.imagePath,
              paused: (track) => track.imagePath,
              orElse: () =>
                  appAudioPlayerNotifProvider.album.tracks[0].imagePath,
            ),
            errorBuilder: (ctx, error, strackTrace) {
              return Image.asset('assets/images/1.jpeg');
            },
          ),
        ),
      ),
    );
  }
}

class TrackInfo extends ConsumerWidget {
  const TrackInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetReference ref) {
    final appAudioPlayerNotifProvider =
        ref.watch(appAudioPlayerNotifierProvider.notifier);
    final appAudioPlayerStateProvider =
        ref.watch(appAudioPlayerNotifierProvider);
    final albumPlayingProvider = ref.watch(albumProvider);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
        ),
        child: TrackInfoDisplay(
          track: appAudioPlayerStateProvider.maybeWhen(
            orElse: () => appAudioPlayerNotifProvider.album.tracks[0],
            initial: (track) => track,
            playing: (track) => track,
            paused: (track) => track,
            stopped: () => albumPlayingProvider.tracks[0],
          ),
          textColor: Colors.black87,
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.onPressed,
    required this.iconData,
  }) : super(key: key);

  final void Function() onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Icon(
          iconData,
          color: Theme.of(context).accentColor,
          size: 40,
        ),
      ),
    );
  }
}
