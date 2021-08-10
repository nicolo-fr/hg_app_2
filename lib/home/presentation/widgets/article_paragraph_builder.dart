import 'package:flutter/material.dart';

class ArticleParagraphBuilder extends StatelessWidget {
  const ArticleParagraphBuilder({ Key? key, required this.paragraphs }) : super(key: key);
final List<String> paragraphs;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemCount: paragraphs.length,
      itemBuilder: (ctx, index) {
      return Column(
        children: [
          Text(paragraphs[index], style: const TextStyle(color: Colors.black54, height: 1.5), ),
          const SizedBox(height: 24,),
        ],
      );
    });
  }
}