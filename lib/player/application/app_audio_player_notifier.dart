import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hg_app_2/core/routes/app_router.gr.dart';
import 'package:hg_app_2/player/domain/album.dart';
import 'package:hg_app_2/player/domain/app_audio_handler.dart';
import 'package:hg_app_2/player/domain/app_audio_player.dart';
import 'package:hg_app_2/player/domain/track.dart';
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
  AppAudioPlayerStateNotifier(
      {required this.appAudioPlayer, required this.album, this.appAudioHandler})
      : super(AppAudioPlayerState.initial(album.fetchTrack(1)));

  final AppAudioPlayer appAudioPlayer;
  final AppAudioHandler? appAudioHandler;

  final Album album;

  void listenToPlayerStateAndUpdateAppState(Track track) {
    appAudioPlayer.player.playbackEventStream.listen(
      (PlaybackEvent event) {
        final int trackNbr = appAudioPlayer.trackNumberPlaying;
        print(event.processingState);
        if (appAudioPlayer.isPlaying) {
          setStateToPlay(album.fetchTrack(trackNbr));
        }
        if (!appAudioPlayer.isPlaying &&
            event.processingState == ProcessingState.idle) {
          setStateToInitial();
        }
        if (!appAudioPlayer.isPlaying) {
          setStateToPaused(album.fetchTrack(trackNbr));
        }
        print(state);
      },
    );
  }

  void setStateToPlay(Track track) {
    state = AppAudioPlayerState.playing(track);
  }

  void setStateToPaused(Track track) {
    state = AppAudioPlayerState.paused(track);
  }

  void setStateToInitial() {
    state = AppAudioPlayerState.initial(album.fetchTrack(1));
  }

  Future<void> play(Track track, BuildContext context) async {
    final bool _isSameTrack =
        appAudioPlayer.player.currentIndex == track.trackNumber - 1;

    try {
      if (!_isSameTrack) {
        appAudioHandler?.skipToQueueItem(track.trackNumber - 1);
      }
      appAudioHandler?.play();

      appAudioPlayer.currentIndexStream.listen(
        (index) {
          final newTrack = album.fetchTrackAtIndex(index);
          if (context.router.current.path == '/track-page' ||
              context.router.current.path == '/track-more-info-page') {
            context.router.replace(TrackPageRoute(track: newTrack));
          }
        },
      );

      appAudioPlayer.player.playerStateStream.listen(
        (playerState) async {
          if (playerState.processingState == ProcessingState.completed) {
            await appAudioPlayer.player.stop();
            state = AppAudioPlayerState.initial(album.fetchTrack(1));
          }
        },
      );
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
    await appAudioHandler?.pause();
  }

  Future<void> playNext(Track trackPlaying) async {
    await appAudioHandler?.skipToNext();
  }

  Future<void> playPrevious(Track trackPlaying) async {
    await appAudioHandler?.skipToPrevious();
    // final newTrack = album.fetchPreviousTrack(trackPlaying);
    // state = AppAudioPlayerState.playing(newTrack);
  }

  //TODO implement playfromstart
  // Future<void> playFromStart(Track track, BuildContext context) async {
  // appAudioPlayer.player.seek(Duration.zero);
  // await appAudioPlayer.seekTrack(track);
  // appAudioPlayer.play();
  // }
}
