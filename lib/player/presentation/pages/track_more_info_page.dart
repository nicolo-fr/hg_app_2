import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hg_app_2/player/domain/track.dart';
import 'package:hg_app_2/player/presentation/widget/libretto_builder.dart';
import 'package:hg_app_2/player/presentation/widget/track_info_display.dart';
import 'package:hg_app_2/player/presentation/widget/track_page_commentary_builder.dart';

class TrackMoreInfoPage extends StatelessWidget {
  const TrackMoreInfoPage({Key? key, required this.track}) : super(key: key);
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
            child: const Icon(Icons.arrow_back_outlined, color: Colors.black),
          ),
          onPressed: () {
            appRouter.pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TrackInfoDisplay(
          textColor: Colors.white.withOpacity(0.7),
          track: track,
        ),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(track.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 15,
                sigmaY: 15,
              ),
              child: Container(
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.55))),
            ),
          ),
          TrackMoreInfoPageView(
            track: track,
          ),
        ],
      ),
    );
  }
}

class TrackMoreInfoPageView extends StatefulWidget {
  const TrackMoreInfoPageView({Key? key, required this.track})
      : super(key: key);
  final Track track;

  @override
  _TrackMoreInfoPageViewState createState() => _TrackMoreInfoPageViewState();
}

class _TrackMoreInfoPageViewState extends State<TrackMoreInfoPageView> {
  @override
  late PageController controller;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appRouter = AutoRouter.of(context);
    final pageView = PageView(
      onPageChanged: (page) {
        setState(() {
          currentPage = page;
        });
      },
      controller: controller,
      children: [
        LibrettoBuilder(track: widget.track),
        CommentaryBuilder(track: widget.track)
      ],
    );
    return Column(
      children: [
        const SizedBox(
          height: 120,
        ),
        TrackPageMoreInfoTabs(
          controller: controller,
          currentPage: currentPage,
          onTapLibretto: () {
            controller.jumpToPage(0);
            setState(() {
              currentPage = 0;
            });
          },
          onTapCommentary: () {
            controller.jumpToPage(1);
            setState(() {
              currentPage = 1;
            });
          },
        ),
        const SizedBox(
          height: 24,
        ),
        Expanded(
          child: pageView,
        ),
      ],
    );
  }
}

class TrackPageMoreInfoTabs extends StatefulWidget {
  const TrackPageMoreInfoTabs(
      {Key? key, required this.controller, required this.currentPage, required this.onTapLibretto, required this.onTapCommentary})
      : super(key: key);

  final PageController controller;
  final int currentPage;
  final void Function() onTapLibretto;
  final void Function() onTapCommentary;

  @override
  _TrackPageMoreInfoTabsState createState() => _TrackPageMoreInfoTabsState();
}

class _TrackPageMoreInfoTabsState extends State<TrackPageMoreInfoTabs> {
  
  @override
  Widget build(BuildContext context) {
    final bool _showLibretto = widget.currentPage == 0;
    final bool _showCommentarySection = widget.currentPage == 1;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TrackPageMoreInfoTab(title: 'Livret', isOn: _showLibretto, onTap: widget.onTapLibretto,),
        const SizedBox(
          width: 12,
        ),
        TrackPageMoreInfoTab(title: 'Commentaires', isOn: _showCommentarySection, onTap: widget.onTapCommentary,),
      ],
    );
  }
}

class TrackPageMoreInfoTab extends StatelessWidget {
  const TrackPageMoreInfoTab({
    Key? key,
    required this.title,
    required this.isOn, required this.onTap,
  }) : super(key: key);
  final String title;
  final bool isOn;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    const Color tabColor = Color.fromRGBO(255, 255, 255, 0.4);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: tabColor),
          borderRadius: BorderRadius.circular(4),
          color: isOn ? tabColor : Colors.transparent, 
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Text(
            title,
            style: TextStyle(
              color:  Colors.white,
              ),
          ),
        )),
      ),
    );
  }
}
