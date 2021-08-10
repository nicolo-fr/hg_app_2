// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../auth/presentation/page/login_page.dart' as _i3;
import '../../home/presentation/pages/humperdincks_bio_page.dart' as _i7;
import '../../home/presentation/pages/recording_history_page.dart' as _i6;
import '../../home/presentation/pages/work_history_page.dart' as _i5;
import '../../player/domain/track.dart' as _i14;
import '../../player/presentation/pages/track_more_info_page.dart' as _i9;
import '../../player/presentation/pages/track_page.dart' as _i8;
import '../../plus/presentation/pages/acknowledgements_page.dart' as _i10;
import '../../plus/presentation/pages/bibliography_page.dart' as _i13;
import '../../plus/presentation/pages/credits_page.dart' as _i12;
import '../../plus/presentation/pages/team_page.dart' as _i11;
import '../pages/hompage_tabs.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.LoginPage();
        }),
    HomepageTabsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.HomepageTabs();
        }),
    WorkHistoryPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.WorkHistoryPage();
        }),
    RecordingHistoryPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.RecordingHistoryPage();
        }),
    HumperdincksBioPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.HumperdincksBioPage();
        }),
    TrackPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<TrackPageRouteArgs>();
          return _i8.TrackPage(key: args.key, track: args.track);
        }),
    TrackMoreInfoPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<TrackMoreInfoPageRouteArgs>();
          return _i9.TrackMoreInfoPage(key: args.key, track: args.track);
        }),
    AcknowledgementsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.AcknowledgementsPage();
        }),
    TeamPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.TeamPage();
        }),
    CreditsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.CreditsPage();
        }),
    BibliographyPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i13.BibliographyPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i1.RouteConfig(HomepageTabsRoute.name, path: '/'),
        _i1.RouteConfig(WorkHistoryPageRoute.name, path: '/work-history-page'),
        _i1.RouteConfig(RecordingHistoryPageRoute.name,
            path: '/recording-history-page'),
        _i1.RouteConfig(HumperdincksBioPageRoute.name,
            path: '/humperdincks-bio-page'),
        _i1.RouteConfig(TrackPageRoute.name, path: '/track-page'),
        _i1.RouteConfig(TrackMoreInfoPageRoute.name,
            path: '/track-more-info-page'),
        _i1.RouteConfig(AcknowledgementsPageRoute.name,
            path: '/acknowledgements-page'),
        _i1.RouteConfig(TeamPageRoute.name, path: '/team-page'),
        _i1.RouteConfig(CreditsPageRoute.name, path: '/credits-page'),
        _i1.RouteConfig(BibliographyPageRoute.name, path: '/bibliography-page')
      ];
}

class LoginPageRoute extends _i1.PageRouteInfo {
  const LoginPageRoute() : super(name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

class HomepageTabsRoute extends _i1.PageRouteInfo {
  const HomepageTabsRoute() : super(name, path: '/');

  static const String name = 'HomepageTabsRoute';
}

class WorkHistoryPageRoute extends _i1.PageRouteInfo {
  const WorkHistoryPageRoute() : super(name, path: '/work-history-page');

  static const String name = 'WorkHistoryPageRoute';
}

class RecordingHistoryPageRoute extends _i1.PageRouteInfo {
  const RecordingHistoryPageRoute()
      : super(name, path: '/recording-history-page');

  static const String name = 'RecordingHistoryPageRoute';
}

class HumperdincksBioPageRoute extends _i1.PageRouteInfo {
  const HumperdincksBioPageRoute()
      : super(name, path: '/humperdincks-bio-page');

  static const String name = 'HumperdincksBioPageRoute';
}

class TrackPageRoute extends _i1.PageRouteInfo<TrackPageRouteArgs> {
  TrackPageRoute({_i2.Key? key, required _i14.Track track})
      : super(name,
            path: '/track-page',
            args: TrackPageRouteArgs(key: key, track: track));

  static const String name = 'TrackPageRoute';
}

class TrackPageRouteArgs {
  const TrackPageRouteArgs({this.key, required this.track});

  final _i2.Key? key;

  final _i14.Track track;
}

class TrackMoreInfoPageRoute
    extends _i1.PageRouteInfo<TrackMoreInfoPageRouteArgs> {
  TrackMoreInfoPageRoute({_i2.Key? key, required _i14.Track track})
      : super(name,
            path: '/track-more-info-page',
            args: TrackMoreInfoPageRouteArgs(key: key, track: track));

  static const String name = 'TrackMoreInfoPageRoute';
}

class TrackMoreInfoPageRouteArgs {
  const TrackMoreInfoPageRouteArgs({this.key, required this.track});

  final _i2.Key? key;

  final _i14.Track track;
}

class AcknowledgementsPageRoute extends _i1.PageRouteInfo {
  const AcknowledgementsPageRoute()
      : super(name, path: '/acknowledgements-page');

  static const String name = 'AcknowledgementsPageRoute';
}

class TeamPageRoute extends _i1.PageRouteInfo {
  const TeamPageRoute() : super(name, path: '/team-page');

  static const String name = 'TeamPageRoute';
}

class CreditsPageRoute extends _i1.PageRouteInfo {
  const CreditsPageRoute() : super(name, path: '/credits-page');

  static const String name = 'CreditsPageRoute';
}

class BibliographyPageRoute extends _i1.PageRouteInfo {
  const BibliographyPageRoute() : super(name, path: '/bibliography-page');

  static const String name = 'BibliographyPageRoute';
}
