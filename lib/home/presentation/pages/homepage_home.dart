import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hg_app_2/core/presentation/page_layout.dart';
import 'package:hg_app_2/core/routes/app_router.gr.dart';
import 'package:hg_app_2/home/presentation/widgets/custom_list_tile.dart';
import 'package:hg_app_2/home/presentation/widgets/home_image.dart';

class HomepageHome extends StatelessWidget {
  const HomepageHome({Key? key}) : super(key: key);

  final double sizedBoxHeight = 40;

  @override
  Widget build(BuildContext context) {
    final appRouter = AutoRouter.of(context);
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PageLayout(
            title: 'Hänsel & Gretel',
          ),
          const HomeImage(
            imagePath: 'assets/images/home.jpg',
          ),
          SizedBox(
            height: sizedBoxHeight,
          ),
          CustomListTile(
            title: 'Histoire de l\'œuvre',
            description:
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut',
            onTap: () {
              appRouter.push(const WorkHistoryPageRoute());
              // print('card pressed');
            },
          ),
          SizedBox(
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
          SizedBox(
            height: sizedBoxHeight,
          ),
          CustomListTile(
            title: 'L\'enregistrement',
            description:
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut',
            onTap: () {
              appRouter.push(const RecordingHistoryPageRoute());
            },
          ),
          SizedBox(
            height: sizedBoxHeight,
          ),
        ],
      ),
    );
  }
}
