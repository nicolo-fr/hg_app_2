import 'package:auto_route/auto_route.dart';
import 'package:hg_app_2/auth/presentation/page/login_page.dart';
import 'package:hg_app_2/core/pages/hompage_tabs.dart';
import 'package:hg_app_2/home/presentation/pages/humperdincks_bio_page.dart';
import 'package:hg_app_2/home/presentation/pages/recording_history_page.dart';
import 'package:hg_app_2/home/presentation/pages/work_history_page.dart';
import 'package:hg_app_2/player/presentation/pages/track_more_info_page.dart';
import 'package:hg_app_2/player/presentation/pages/track_page.dart';
import 'package:hg_app_2/plus/presentation/pages/acknowledgements_page.dart';
import 'package:hg_app_2/plus/presentation/pages/bibliography_page.dart';
import 'package:hg_app_2/plus/presentation/pages/credits_page.dart';
import 'package:hg_app_2/plus/presentation/pages/team_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: LoginPage),
    MaterialRoute(page: HomepageTabs, initial: true),
    MaterialRoute(page: WorkHistoryPage),
    MaterialRoute(page: RecordingHistoryPage),
    MaterialRoute(page: HumperdincksBioPage),
    MaterialRoute(page: TrackPage),
    MaterialRoute(page: TrackMoreInfoPage),
    MaterialRoute(page: AcknowledgementsPage),
    MaterialRoute(page: TeamPage),
    MaterialRoute(page: CreditsPage),
    MaterialRoute(page: BibliographyPage),
  ]
)
class $AppRouter {}


