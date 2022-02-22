import 'package:flutter/material.dart';
import 'package:hg_app_2/core/presentation/page_layout.dart';
import 'package:hg_app_2/player/infrastructure/repositories/album_repository.dart';
import 'package:hg_app_2/player/presentation/widget/acts_tabs.dart';
import 'package:hg_app_2/player/presentation/widget/track_list_builder.dart';

class TracksPageView extends StatefulWidget {
  final List<Widget> children;

  const TracksPageView({Key? key, required this.children}) : super(key: key);
  @override
  _TracksPageViewState createState() => _TracksPageViewState();
}

class _TracksPageViewState extends State<TracksPageView> {
  PageController? _pageController;
  List<double>? _heights;
  int _currentPage = 0;

  double get _currentHeight => _heights![_currentPage];

  @override
  void initState() {
    _heights = widget.children.map((e) => 0.0).toList();
    super.initState();
    _pageController = PageController()
      ..addListener(() {
        final _newPage = _pageController!.page!.round();
        if (_currentPage != _newPage) {
          setState(() => _currentPage = _newPage);
        }
      });
    // _pageController = PageController() //
    //   ..addListener(() {
    //     final _newPage = _pageController!.page!.round();
    //     if (_currentPage != _newPage) {
    //       setState(() => _currentPage = _newPage);
    //     }
    //   });
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      curve: Curves.easeInOutCubic,
      duration: const Duration(milliseconds: 100),
      tween: Tween<double>(begin: _heights![0], end: _currentHeight),
      builder: (context, value, child) => SizedBox(height: value, child: child),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PageLayout(
            title: 'Opéra',
          ),
          ActsTabs(
            controller: _pageController!,
            currentPage: _currentPage,
          ),
          Flexible(
            child: PageView(
              controller: _pageController,
              children: _sizeReportingChildren
                  .asMap() //
                  .map((index, child) => MapEntry(index, child))
                  .values
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> get _sizeReportingChildren => widget.children
      .asMap() //
      .map(
        (index, child) => MapEntry(
          index,
          OverflowBox(
            //needed, so that parent won't impose its constraints on the children, thus skewing the measurement results.
            minHeight: 0,
            maxHeight: double.infinity,
            alignment: Alignment.topCenter,
            child: SizeReportingWidget(
              onSizeChange: (size) =>
                  setState(() => _heights![index] = size.height + 252),
              child: Align(child: child),
            ),
          ),
        ),
      )
      .values
      .toList();
}

class SizeReportingWidget extends StatefulWidget {
  final Widget child;
  final ValueChanged<Size> onSizeChange;

  const SizeReportingWidget({
    Key? key,
    required this.child,
    required this.onSizeChange,
  }) : super(key: key);

  @override
  _SizeReportingWidgetState createState() => _SizeReportingWidgetState();
}

class _SizeReportingWidgetState extends State<SizeReportingWidget> {
  Size? _oldSize;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) => _notifySize());
    return widget.child;
  }

  void _notifySize() {
    if (!this.mounted) {
      return;
    }
    final size = context.size;
    if (_oldSize != size) {
      _oldSize = size;
      widget.onSizeChange(size!);
    }
  }
}

//Original version
// class TracksPageView extends StatefulWidget {
//   @override
//   _TracksPageViewState createState() => _TracksPageViewState();
// }

// class _TracksPageViewState extends State<TracksPageView> {
//   late PageController controller;
//   int currentPage = 0;

//   final album = LocalAlbumRepository().fetchAlbum();

//   @override
//   void initState() {
//     super.initState();
//     controller = PageController();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final pageView = PageView(
//       onPageChanged: (page) {
//         setState(() {
//           currentPage = page;
//         });
//       },
//       controller: controller,
//       children: [
//         TracksListBuilder(
          
//           tracksList: album.fetchTracksForAct(1),
//         ),
//         TracksListBuilder(
//           tracksList: album.fetchTracksForAct(2),
//         ),
//         TracksListBuilder(
//           tracksList: album.fetchTracksForAct(3),
//         ),
//       ],
//     );

    

//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const PageLayout(
//           title: 'Opéra',
//         ),
//         ActsTabs(
//           controller: controller,
//           currentPage: currentPage,
//         ),
//         Flexible(child: pageView)
//         // Flexible(child: pageView, )
//         // Flexible(child: Column(
//         //   mainAxisSize: MainAxisSize.min,
//         //   children: [
//         //     pageView,
//         //   ],
//         // ), )
//         // Flexible(child: Container(child: pageView, height: 1100,), )
//         // Container(color: Colors.amber, height: 1000,)
//         // pageView
//         // Expanded(
//         //   child: pageView,
//         // ),
//       ],
//     );
//   }
// }
