import 'package:flutter/material.dart';
import 'package:hg_app_2/player/core/providers.dart';
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
    final appAudioPlayerStateProvider =
        ref.watch(appAudioPlayerNotifierProvider);

    final Duration duration = ref.watch(appAudioPlayerDuration).maybeMap(
          data: (data) => data.value,
          orElse: () => const Duration(),
        );
    final Duration position = ref.watch(appAudioPlayerPosition).maybeMap(
          data: (data) => data.value,
          orElse: () => const Duration(),
        );

    double getPositionIndicatorWidth() {
      var positionToDuration = position.inSeconds.toDouble() / duration.inSeconds.toDouble();
      if (positionToDuration.isNaN) {
        return 0.1;
      }
      if (positionToDuration >= 1) {
        positionToDuration = 1;
        return positionToDuration * width;
      }
      return positionToDuration * width;
    }

    final _positionIndicatorPlaceholder = Container(height: height,);

    // ignore: sized_box_for_whitespace
    final Widget _positionIndicator = Container(
      width: width,
      height: height,
      child: Row(
        children: [
          Container(
            color: color,
            width: getPositionIndicatorWidth(),
            height: height,
          ),
        ],
      ),
    );
    
    final Widget indicatorDisplay = appAudioPlayerStateProvider.maybeWhen(
      initial: (track) => _positionIndicatorPlaceholder,
      stopped: () => _positionIndicatorPlaceholder,
      orElse: () => _positionIndicator,
    );
    return indicatorDisplay;
  }
}
