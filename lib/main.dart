import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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


