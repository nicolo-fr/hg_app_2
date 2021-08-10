import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hg_app_2/core/routes/app_router.gr.dart';
import 'package:hg_app_2/player/domain/album.dart';
import 'package:hg_app_2/player/domain/app_audio_player.dart';
import 'package:hg_app_2/player/domain/track.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';

part 'app_audio_player_notifier.freezed.dart';

@freezed
class AppAudioPlayerState with _$AppAudioPlayerState {
  const AppAudioPlayerState._();
  const factory AppAudioPlayerState.initial(Track track) = _Initial;
  const factory AppAudioPlayerState.loading(Track track) = _Loading;
  const factory AppAudioPlayerState.playing(Track track) = _Playing;
  const factory AppAudioPlayerState.paused(Track track) = _Paused;
  const factory AppAudioPlayerState.stopped() = _Stopped;
  const factory AppAudioPlayerState.failure(String message) = _Failure;
}

class AppAudioPlayerStateNotifier extends StateNotifier<AppAudioPlayerState> {
  AppAudioPlayerStateNotifier(this.appAudioPlayer, this.album)
      : super(AppAudioPlayerState.initial(album.fetchTrack(1)));

  final AppAudioPlayer appAudioPlayer;
  final Album album;

  Future<void> play(Track track, BuildContext context) async {
    final bool _isAlbumLastTrack = album.isLastTrack(track);
    // Stream<void> _onPlayerCompletion =
    //     appAudioPlayer.audioPlayer.onPlayerCompletion;

    print(
        '                  PLAY FUNCTION CALLED with trackPath: ${track.trackPath}, last track ? ${_isAlbumLastTrack}');

    try {
      await appAudioPlayer.audioCache.play(track.trackPath);
      print(
          'loaded files playing: ${appAudioPlayer.audioCache.loadedFiles.toString()}');

      state = AppAudioPlayerState.playing(track);
      print(state.toString());
    } catch (e) {}

    if (_isAlbumLastTrack == false) {
      print('if function called: _isAlbumLastTrack == false');

      Track _nextTrack = album.fetchNextTrack(track);
      print('_nextTrack: ${_nextTrack}');

      await appAudioPlayer.audioCache.load('${_nextTrack.trackPath}');
      print(
          'loaded files pre-loading: ${appAudioPlayer.audioCache.loadedFiles.toString()}');

      appAudioPlayer.playerCompletionEvent.listen(
        (event) async {
          await appAudioPlayer.audioPlayer.stop();
          await appAudioPlayer.audioCache.clearAll();

          print(
              'Has cleared cache ? loaded files : ${appAudioPlayer.audioCache.loadedFiles.toString()}');
          print(
              '-----------------END----NEXT TRACK WILL FOLLOW------------------');

          await play(_nextTrack, context);

          // _onPlayerCompletion.listen((event) {
          //   appAudioPlayer.audioPlayer.stop().then(
          //     (value) {
          //       print('audioplayer stopped');
          //       return appAudioPlayer.audioCache.clearAll().then((value) {
          //         print('cache cleared?');
          //         print(
          //             'loaded files cleared: ${appAudioPlayer.audioCache.loadedFiles.toString()}');
          //         return play(_nextTrack, context);
          //       });
          //     },
          //   );
          // print('player  completed _isAlbumLastTrack == false');
          // print('loaded files initial: ${appAudioPlayer.audioCache.loadedFiles.toString()}');
          // await appAudioPlayer.audioPlayer.stop();
          // print('loaded files stopped: ${appAudioPlayer.audioCache.loadedFiles.toString()}');
          // appAudioPlayer.audioCache.clearAll();
          // print('loaded files cleared: ${appAudioPlayer.audioCache.loadedFiles.toString()}');
          // print('----------------------------------');
          // await play(_nextTrack, context);

          // if (context.router.current.path == '/track-page' ||
          //     context.router.current.path == '/track-more-info-page') {
          //   context.router.replace(TrackPageRoute(track: _nextTrack));
          // }
        },
        onError: (Object e) {
          print('an error occured: ${e.toString()}');

        },
      );
    } else if (_isAlbumLastTrack == true) {
      print('if function called: _isAlbumLastTrack == true');
      appAudioPlayer.playerCompletionEvent.listen(
        (event) {
          try {
            print('player completed _isAlbumLastTrack == true');
            var playerStopped = appAudioPlayer.audioPlayer.stop();
            state = const AppAudioPlayerState.stopped();

            // var result2 = appAudioPlayer.audioPlayer.stop();
            // print(result2);

            // // appAudioPlayer.audioCache.clearAll();
            // print('audioplayer stopped.');
            // state = const AppAudioPlayerState.stopped();
            // print(state.toString());
            // state = AppAudioPlayerState.initial(album.fetchTrack(1));
            // print(state.toString());
          } catch (e) {}
        },
      );
    }

    appAudioPlayer.audioPlayer.onPlayerError.listen((msg) {
      print('audioPlayer error : $msg');
    });
  }

  Future<void> pause(Track track) async {
    appAudioPlayer.audioPlayer.pause();
    state = AppAudioPlayerState.paused(track);
  }

  Future<void> playFromStart(Track track, BuildContext context) async {
    await appAudioPlayer.audioPlayer.stop();
    play(track, context);
  }
}

// class AppAudioPlayerStateNotifier extends StateNotifier<AppAudioPlayerState> {
//   AppAudioPlayerStateNotifier(this.appAudioPlayer, this.album)
//       : super(AppAudioPlayerState.initial(album.fetchTrack(1)));

//   final AppAudioPlayer appAudioPlayer;
//   final Album album;

//   Future<void> play(Track track, BuildContext context) async {
//     print('play function called with trackPath: ${track.trackPath}');
//     final bool _isAlbumLastTrack = album.isLastTrack(track);
//     print('isAlbumLastTrack: ${_isAlbumLastTrack}');
//     final _onPlayerCompletion = appAudioPlayer.audioPlayer.onPlayerCompletion;

    

//     try {
//       state = AppAudioPlayerState.playing(track);
//       var result = await appAudioPlayer.audioCache.play(track.trackPath);
//       print(state.toString());
//       print(result);
//     } catch (e) {
//       throw UnimplementedError();
//     }

//     if (_isAlbumLastTrack == false) {
//       print('if function called: _isAlbumLastTrack == false');
//       final _nextTrack = album.fetchNextTrack(track);
//       appAudioPlayer.audioCache.load('${_nextTrack.trackPath}');
//       print('_nextTrack: ${_nextTrack}');
//       _onPlayerCompletion.listen(
//         (event) async {
//           try {
//             print('player  completed');
//             await play(_nextTrack, context);
            
//             // state = AppAudioPlayerState.playing(_nextTrack);
//             if (context.router.current.path == '/track-page' ||
//                 context.router.current.path == '/track-more-info-page') {
//               context.router.replace(TrackPageRoute(track: _nextTrack));
//             }
//           } catch (e) {}
//         },
//       );
//     } else if (_isAlbumLastTrack == true) {
//       print('if function called: _isAlbumLastTrack == true');
//       _onPlayerCompletion.listen(
//         (event) async {
//           try {
//             var result2 = await appAudioPlayer.audioPlayer.stop();
//             print(result2);
            
//             // appAudioPlayer.audioCache.clearAll();
//             print('audioplayer stopped.');
//             state = const AppAudioPlayerState.stopped();
//             print(state.toString());
//             state = AppAudioPlayerState.initial(album.fetchTrack(1));
//             print(state.toString());
//           } catch (e) {}

//           // state = const AppAudioPlayerState.stopped();
//         },
//       );
//     }

//     appAudioPlayer.audioPlayer.onPlayerError.listen((msg) {
//       print('audioPlayer error : $msg');
//     });
//   }

//   Future<void> pause(Track track) async {
//     appAudioPlayer.audioPlayer.pause();
//     state = AppAudioPlayerState.paused(track);
//   }

//   Future<void> playFromStart(Track track, BuildContext context) async {
//     await appAudioPlayer.audioPlayer.stop();
//     play(track, context);
//   }
// }
