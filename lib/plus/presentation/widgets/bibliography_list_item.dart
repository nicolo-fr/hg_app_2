
import 'package:flutter/material.dart';

class BibliographyListItem extends StatelessWidget {
  const BibliographyListItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Flexible(
          child: Text(title),
        ),
      ],
    );
  }
}