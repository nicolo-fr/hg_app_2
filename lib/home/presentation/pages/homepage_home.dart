import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hg_app_2/core/presentation/page_layout.dart';
import 'package:hg_app_2/core/routes/app_router.gr.dart';
import 'package:hg_app_2/home/presentation/widgets/custom_list_tile.dart';
import 'package:hg_app_2/home/presentation/widgets/home_image.dart';

class HomepageHome extends StatelessWidget {
  const HomepageHome({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    const double sizedBoxHeight = 40;
    final appRouter = AutoRouter.of(context);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PageLayout(
            title: 'Hänsel & Gretel',
          ),
          const HomeImage(
            imagePath: 'assets/images/home.jpg',
          ),
          const SizedBox(
            height: sizedBoxHeight,
          ),
          CustomListTile(
            // ignore: avoid_escaping_inner_quotes
            title: 'Histoire de l\'œuvre',
            description:
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut',
            onTap: () {
              appRouter.push(const WorkHistoryPageRoute());
              // print('card pressed');
            },
          ),
          const SizedBox(
            height: sizedBoxHeight,
          ),
          CustomListTile(
            title: 'La fraterie Humperdinck',
            description:
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut',
            onTap: () {
              
              appRouter.push(const HumperdincksBioPageRoute());
            },
          ),
          const SizedBox(
            height: sizedBoxHeight,
          ),
          CustomListTile(
            // ignore: avoid_escaping_inner_quotes
            title: 'L\'enregistrement',
            description:
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut',
            onTap: () {
              appRouter.push(const RecordingHistoryPageRoute());
            },
          ),
          const SizedBox(
            height: sizedBoxHeight,
          ),
        ],
      ),
    );
  }
}
