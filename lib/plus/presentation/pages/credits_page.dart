import 'package:flutter/material.dart';
import 'package:hg_app_2/player/core/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreditsPage extends ConsumerWidget {
  const CreditsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetReference ref) {
    final albumCastData = ref.watch(albumProvider).cast;
    final Map<String, String> team = {
      'Illustrations': 'Cécile Pruvot',
      'Textes': 'Tristan Labouret',
      'Application mobile': 'Nicolas Schotter',
      'Traduction': 'Georges Puchet / Cécile Pruvot',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Crédits',
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        //This is a required parameter to show the foreground color
        backwardsCompatibility: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Enregitrement',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 16,
                ),
                CreditsListBuilder(map: albumCastData),
                const Text(
                    'Enregistrement original réalisé les 27, 29 et 30 juillet 1953 au Kingway Hall à Londres pour EMI Records Limited'),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Ouvrage',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 16,
                ),
                CreditsListBuilder(map: team),
                const SizedBox(
                  height: 16,
                ),
                const Text('Tous droits réservés - Ut Pictura Editions 2021'),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CreditsListBuilder extends StatelessWidget {
  const CreditsListBuilder({Key? key, required this.map}) : super(key: key);

  final Map<String, String> map;

  @override
  Widget build(BuildContext context) {
    //  List<CreditsItemBuilder> creditsItemsList = [];

    // for (var entry in albumCastData.entries) {
    //   var newEntry = CreditsItemBuilder(
    //     role: entry.key,
    //     name: entry.value,
    //   );
    //   creditsItemsList.add(newEntry);
    // }

    // return Column(
    //   children: [
    //   ...creditsItemsList
    // ],);

    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: map.length,
        itemBuilder: (ctx, i) {
          String key = map.keys.elementAt(i);
          return CreditsItemBuilder(
            role: key,
            name: map[key]!,
          );
        });
  }
}

class CreditsItemBuilder extends StatelessWidget {
  const CreditsItemBuilder({
    Key? key,
    required this.role,
    required this.name,
  }) : super(key: key);
  final String role;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          role,
          style: TextStyle(
              color: Theme.of(context).accentColor,
              fontStyle: FontStyle.italic,
              fontSize: 12),
        ),
        Text(name),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
