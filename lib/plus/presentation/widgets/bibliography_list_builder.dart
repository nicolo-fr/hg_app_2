
import 'package:flutter/material.dart';
import 'package:hg_app_2/plus/infrastructure/data/bibliography_data.dart';

import 'bibliography_list_item.dart';

class BibliographyListBuilder extends StatelessWidget {
  const BibliographyListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: bibliographyReferences.length,
      itemBuilder: (ctx, index) {
        return Column(
          children: [
            BibliographyListItem(
              title: bibliographyReferences[index].getReference,
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        );
      },
    );
  }
}
