
import 'package:flutter/material.dart';
import 'package:hg_app_2/player/application/app_audio_player_notifier.dart';
import 'package:hg_app_2/player/core/providers.dart';
import 'package:hg_app_2/player/domain/app_audio_player.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PositionIndicator extends ConsumerWidget {
  const PositionIndicator(
      {Key? key,
      required this.width,
      required this.height,
      required this.color})
      : super(key: key);

  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context, WidgetReference ref) {
    final appAudioPlayerPrvdr = ref.watch(appAudioPlayerProvider);
    final appAudioPlayerStateProvider = ref.watch(appAudioPlayerNotifierProvider);
    

    final Duration duration = ref.watch(appAudioPlayerDuration).maybeMap(
          data: (data) => data.value,
          orElse: () => const Duration(),
        );
    final Duration position = ref.watch(appAudioPlayerPosition).maybeMap(
          data: (data) => data.value,
          orElse: () => const Duration(),
        );

    final deviceData = MediaQuery.of(context).size;

    double musicDurationIndicator =
        (width * position.inSeconds.toDouble()) / duration.inSeconds.toDouble();

    double? getWidth() {
      if (musicDurationIndicator.isNaN ||
          musicDurationIndicator == 0 ||
          musicDurationIndicator.isInfinite) {
        return 0.1;
      } else {
        return musicDurationIndicator;
      }
    }

    Widget indicatorWidget = Container(
      width: width,
      height: height,
      child: Row(
        children: [
          Container(
            color: color,
            width: musicDurationIndicator.isNaN ? 0.1 : musicDurationIndicator,
            height: height,
          ),
        ],
      ),
    );

    final Widget indicatorDisplay = appAudioPlayerStateProvider.maybeWhen(
      stopped: () {
        return Container();
      },
      orElse: () {
        return indicatorWidget;
      },
    );
    // ignore: sized_box_for_whitespace
    return indicatorDisplay;
  }
}
