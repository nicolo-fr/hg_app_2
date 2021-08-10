import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hg_app_2/core/presentation/custom_leading_widget_appbar.dart';

class ArticlePageLayout extends StatelessWidget {
  const ArticlePageLayout(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.children})
      : super(key: key);

  final String imagePath;
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            stretch: true,
            leading: const CustomLeadingWidgetAppBar(),
            elevation: 0,
            expandedHeight: 250,
            floating: false,
            pinned: false,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [StretchMode.zoomBackground],
              centerTitle: false,
              // title: Text('Running running'),
              background: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(fontSize: 24),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ...children
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

