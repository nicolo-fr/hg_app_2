import 'package:flutter/material.dart';
import 'package:hg_app_2/player/domain/track.dart';

class CommentaryBuilder extends StatelessWidget {
  final Track track;
  const CommentaryBuilder({Key? key, required this.track}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool _hasCommentaryText = track.commentary != null;

    return _hasCommentaryText
        ? ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            itemCount: track.commentary?.length,
            itemBuilder: (ctx, i) {
              return Padding(
                padding:
                    const EdgeInsets.only(bottom: 24.0, left: 16, right: 16),
                child: Text(
                  track.commentary![i],
                  style: const TextStyle(color: Colors.white, height: 1.5),
                ),
              );
            },
          )
        : const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Text(
              'Aucun commentaire. Laissez-vous porter par la musique !',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          );
  }
}
