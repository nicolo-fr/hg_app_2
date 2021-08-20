import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hg_app_2/player/domain/track.dart';
import 'package:hg_app_2/player/presentation/widget/track_page_audio_controller.dart';

class TrackPage extends StatelessWidget {
  const TrackPage({Key? key, required this.track}) : super(key: key);

  final Track track;

  @override
  Widget build(BuildContext context) {
    final appRouter = AutoRouter.of(context);


    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(255, 255, 255, 0.4),
            ),
            width: 80,
            height: 80,
            child: const Icon(Icons.clear, color: Colors.black),
          ),
          onPressed: () => appRouter.pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(track.imagePath),
                // image: myImageProvider.,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [TrackPageAudioController(track: track)],
          ),
        ],
      ),
    );
  }
}
