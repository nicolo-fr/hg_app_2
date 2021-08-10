import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const PageLayout({Key? key, required this.title, this.children = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, top: 72, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 32),
            ...children
          ],
        ),
      ),
    );
  }
}
