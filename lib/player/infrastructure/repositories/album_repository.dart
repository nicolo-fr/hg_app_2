import 'package:hg_app_2/player/domain/album.dart';
import 'package:hg_app_2/player/infrastructure/data/album_info.dart';
import 'package:hg_app_2/player/infrastructure/data/track_1.dart';
import 'package:hg_app_2/player/infrastructure/data/track_10.dart';
import 'package:hg_app_2/player/infrastructure/data/track_11.dart';
import 'package:hg_app_2/player/infrastructure/data/track_12.dart';
import 'package:hg_app_2/player/infrastructure/data/track_13.dart';
import 'package:hg_app_2/player/infrastructure/data/track_14.dart';
import 'package:hg_app_2/player/infrastructure/data/track_15.dart';
import 'package:hg_app_2/player/infrastructure/data/track_16.dart';
import 'package:hg_app_2/player/infrastructure/data/track_17.dart';
import 'package:hg_app_2/player/infrastructure/data/track_18.dart';
import 'package:hg_app_2/player/infrastructure/data/track_19.dart';
import 'package:hg_app_2/player/infrastructure/data/track_2.dart';
import 'package:hg_app_2/player/infrastructure/data/track_20.dart';
import 'package:hg_app_2/player/infrastructure/data/track_21.dart';
import 'package:hg_app_2/player/infrastructure/data/track_22.dart';
import 'package:hg_app_2/player/infrastructure/data/track_23.dart';
import 'package:hg_app_2/player/infrastructure/data/track_24.dart';
import 'package:hg_app_2/player/infrastructure/data/track_25.dart';
import 'package:hg_app_2/player/infrastructure/data/track_26.dart';
import 'package:hg_app_2/player/infrastructure/data/track_27.dart';
import 'package:hg_app_2/player/infrastructure/data/track_28.dart';
import 'package:hg_app_2/player/infrastructure/data/track_29.dart';
import 'package:hg_app_2/player/infrastructure/data/track_3.dart';
import 'package:hg_app_2/player/infrastructure/data/track_30.dart';
import 'package:hg_app_2/player/infrastructure/data/track_31.dart';
import 'package:hg_app_2/player/infrastructure/data/track_32.dart';
import 'package:hg_app_2/player/infrastructure/data/track_4.dart';
import 'package:hg_app_2/player/infrastructure/data/track_5.dart';
import 'package:hg_app_2/player/infrastructure/data/track_6.dart';
import 'package:hg_app_2/player/infrastructure/data/track_7.dart';
import 'package:hg_app_2/player/infrastructure/data/track_8.dart';
import 'package:hg_app_2/player/infrastructure/data/track_9.dart';

class LocalAlbumRepository {

  Album fetchAlbum() {
    final album = Album(
      title: AlbumInfo.title,
      composer: AlbumInfo.composer,
      libretist: AlbumInfo.libretist,
      numberOfActs: AlbumInfo.numberOfActs,
      tracks: [
        track1, 
        track2, 
        track3, 
        track4, 
        track5, 
        track6, 
        track7, 
        track8, 
        track9, 
        track10, 
        track11, 
        track12, 
        track13, 
        track14, 
        track15, 
        track16, 
        track17, 
        track18, 
        track19, 
        track20, 
        track21, 
        track22, 
        track23, 
        track24, 
        track25, 
        track26, 
        track27, 
        track28, 
        track29, 
        track30, 
        track31, 
        track32, 
         
      ], 
      cast: AlbumInfo.cast,
      releaseDate: AlbumInfo.releaseDate,
    );
    return album;
  }
}

class AlbumInfoData {
}