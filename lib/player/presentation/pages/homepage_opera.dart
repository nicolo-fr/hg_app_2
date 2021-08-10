import 'package:flutter/material.dart';
import 'package:hg_app_2/player/presentation/widget/tracks_page_view.dart';

class HomepageOpera extends StatelessWidget {
  const HomepageOpera({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TracksPageView(),
    );
  }
}

