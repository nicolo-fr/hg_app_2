import 'package:flutter/material.dart';
import 'package:hg_app_2/player/domain/track.dart';

class TrackInfoDisplay extends StatelessWidget {
  final Color textColor;
  final Track track;

  const TrackInfoDisplay(
      {Key? key, required this.textColor, required this.track})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          track.titleFR,
          style: TextStyle(
            fontFamily: 'Lato',
            color: textColor,
            fontSize: 14,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          track.titleDE,
          style: TextStyle(
              fontFamily: 'Lato',
              fontStyle: FontStyle.italic,
              fontSize: 12,
              color: textColor),
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          track.scene == 0
              ? 'Acte ${track.act}'
              : 'Acte ${track.act}, scène ${track.scene}',
          style: TextStyle(fontFamily: 'Lato', fontSize: 12, color: textColor),
        ),
      ],
    );
  }
}
