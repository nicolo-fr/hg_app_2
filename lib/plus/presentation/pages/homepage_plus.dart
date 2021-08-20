import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hg_app_2/core/presentation/page_layout.dart';
import 'package:hg_app_2/core/routes/app_router.gr.dart';

class HomepagePlus extends StatelessWidget {
  const HomepagePlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = AutoRouter.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PageLayout(title: 'Plus'),
          CustomListTilePlus(
            title: 'Bibliographie',
            onTap: () {
              appRouter.push(const BibliographyPageRoute());
            },
          ),
          CustomListTilePlus(
            title: 'Crédits',
            onTap: () {
              appRouter.push(const CreditsPageRoute());
            },
          ),
          CustomListTilePlus(
            title: 'Remerciements',
            onTap: () {
              appRouter.push(const AcknowledgementsPageRoute());
            },
          ),
        ],
      ),
    );
  }
}

class CustomListTilePlus extends StatelessWidget {
  const CustomListTilePlus({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        title: Text(title),
        trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: onTap,
      ),
    );
  }
}
