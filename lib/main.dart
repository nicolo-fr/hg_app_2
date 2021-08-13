import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio_background/just_audio_background.dart';

import 'core/app_widget.dart';

// Future<void> main() async {
//   await JustAudioBackground.init(
//     androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
//     androidNotificationChannelName: 'Audio playback',
//     androidNotificationOngoing: true,
//   );
//   runApp(
//        ProviderScope(
//         child: AppWidget(),
//       ),
//     );
// }
void main() => runApp(
       ProviderScope(
        child: AppWidget(),
      ),
    );


// Original androidmanifest

// <manifest xmlns:android="http://schemas.android.com/apk/res/android"
//     package="sch.nicolas.hg_app_2">
//     <uses-permission android:name="android.permission.WAKE_LOCK"/>
//     <uses-permission android:name="android.permission.FOREGROUND_SERVICE"/>
//    <application
//         android:label="hg_app_2"
//         android:icon="@mipmap/launcher_icon">
//         <activity
//             android:name="com.ryanheise.audioservice.AudioServiceActivity"
//             android:launchMode="singleTop"
//             android:theme="@style/LaunchTheme"
//             android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
//             android:hardwareAccelerated="true"
//             android:windowSoftInputMode="adjustResize">
            
//             <meta-data
//               android:name="io.flutter.embedding.android.NormalTheme"
//               android:resource="@style/NormalTheme"
//               />
           
//             <meta-data
//               android:name="io.flutter.embedding.android.SplashScreenDrawable"
//               android:resource="@drawable/launch_background"
//               />
//             <intent-filter>
//                 <action android:name="android.intent.action.MAIN"/>
//                 <category android:name="android.intent.category.LAUNCHER"/>
//             </intent-filter>
//         </activity>
//         <service android:name="com.ryanheise.audioservice.AudioService">
//           <intent-filter>
//             <action android:name="android.media.browse.MediaBrowserService" />
//           </intent-filter>
//         </service>
//         <receiver android:name="com.ryanheise.audioservice.MediaButtonReceiver" >
//           <intent-filter>
//             <action android:name="android.intent.action.MEDIA_BUTTON" />
//           </intent-filter>
//         </receiver>
//         <!-- Don't delete the meta-data below.
//              This is used by the Flutter tool to generate GeneratedPluginRegistrant.java -->
//         <meta-data
//             android:name="flutterEmbedding"
//             android:value="2" />
//     </application>
// </manifest>





