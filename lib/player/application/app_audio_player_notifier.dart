import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hg_app_2/core/routes/app_router.gr.dart';
import 'package:hg_app_2/player/domain/album.dart';
import 'package:hg_app_2/player/domain/app_audio_player.dart';
import 'package:hg_app_2/player/domain/track.dart';
import 'package:hg_app_2/player/infrastructure/data/track_2.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:just_audio/just_audio.dart';

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
    final bool _isSameTrack =
        appAudioPlayer.player.currentIndex == track.trackNumber - 1;

    try {
      if (!_isSameTrack) {
        await appAudioPlayer.seekTrack(track);
      }
      appAudioPlayer.play();
      state = AppAudioPlayerState.playing(track);

      appAudioPlayer.currentIndexStream.listen(
        (index) {
          var newTrack = album.fetchTrackAtIndex(index);
          state = AppAudioPlayerState.playing(newTrack);
          print(state);
          if (context.router.current.path == '/track-page' ||
              context.router.current.path == '/track-more-info-page') {
            context.router.replace(TrackPageRoute(track: newTrack));
          }
        },
      );

      appAudioPlayer.player.playerStateStream.listen((playerState) async { 
        if (playerState.processingState == ProcessingState.completed) {
          await appAudioPlayer.player.stop();
          state = const AppAudioPlayerState.stopped();
          // await appAudioPlayer.seekTrack(album.fetchTrackAtIndex(0));
          print(state);
          print(appAudioPlayer.player.currentIndex);
        }
      });
    } on PlayerException catch (e) {
      print("Error code: ${e.code}");
      print("Error message: ${e.message}");
    } on PlayerInterruptedException catch (e) {
      print("Connection aborted: ${e.message}");
    } catch (e) {
      print(e);
    }
  }

  Future<void> pause(Track track) async {
    await appAudioPlayer.player.pause();
    state = AppAudioPlayerState.paused(track);
    print(state);
  }

  //TODO implement playfromstart
  Future<void> playFromStart(Track track, BuildContext context) async {
    // await appAudioPlayer.seekTrack(track);
    return;
  }
}

